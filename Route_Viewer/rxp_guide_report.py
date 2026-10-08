#!/usr/bin/env python3
"""
rxp_guide_report.py - turn RestedXP-style guide files (.lua) into an HTML report.

For every guide in the file(s) and every zone inside each guide it produces:
  * a map of the waypoint path (numbered steps, coloured by order, markers by action)
  * a table of the quests touched in that zone with a status derived from the guide text
    (accepted / turned in / completed, in which step, skipped, order problems, ...)
It also prints a "lint" list of the kind of mistakes we kept finding by hand (undefined
labels, glued "step" lines, unknown keywords, steps gated on quests nobody turns in).

Usage
-----
  python rxp_guide_report.py guides.lua -o report
  python rxp_guide_report.py a.lua b.lua -o report --class warlock --race dwarf
  python rxp_guide_report.py guides.lua -o report --xp-table quests.tsv --maps maps/

Options
-------
  -o DIR               output directory (default: report)   -> DIR/index.html + DIR/maps/*.png
  --xp-table FILE      TSV/CSV with ID and Exp columns (your Wowhead export works) -> XP per guide
  --class NAME         only show steps/lines valid for this class  (e.g. warlock, shaman)
  --race NAME          same for race (e.g. dwarf, gnome)
  --include-skipped    also draw '<< skip' steps (grey, hollow); statuses still ignore them
  --maps DIR           background map images, e.g. Darkshore.png, 1439.png, Kalimdor.png, 1414.png
                       (names ignore case/spaces/punctuation). Zone images are stretched over the zone's
                       bounds rectangle; a continent image needs a bounds entry named like the continent
                       ("Kalimdor" / "Eastern Kingdoms" or 1414 / 1415). Zone images draw on top of it.
  --map-opacity X      background opacity (default 0.45);  --map-max-px N  downscale big images (default 1400)
  --bounds FILE        optional JSON to convert "world" coordinates (e.g. 1439/1,503.1,6402.1)
                       onto the percent map so both kinds plot together. Format:
                       {"1439": {"A": [a_at_left_edge, a_at_right_edge],
                                 "B": [b_at_top_edge,  b_at_bottom_edge]}}
                       (A = first number, B = second number of the world coordinate)
  --guide TEXT         only guides whose #name contains TEXT
  --json FILE          also dump quest statuses and lint to JSON

Coordinates
-----------
  .goto Duskwood,73.5,46.9      -> percent coordinates on the named zone
  .goto 1436,57.6,54.0          -> percent coordinates, numeric uiMapID
  .goto 1436/0,1055.2,-10128.7  -> "world" coordinates (A=west-positive, B=north-positive);
                                   plotted with east=-A, north=B unless --bounds is given
"""
from __future__ import annotations

import argparse
import base64
import csv
import html
import io
import json
import os
import re
import sys
from collections import OrderedDict, defaultdict
from dataclasses import dataclass, field
from typing import Optional

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt  # noqa: E402
from matplotlib.lines import Line2D  # noqa: E402

# ----------------------------------------------------------------------------- constants
MAP_NAMES = {
    1411: "Durotar", 1412: "Mulgore", 1413: "The Barrens", 1414: "Kalimdor", 1415: "Eastern Kingdoms",
    1416: "Alterac Mountains", 1417: "Arathi Highlands", 1418: "Badlands", 1419: "Blasted Lands",
    1420: "Tirisfal Glades", 1421: "Silverpine Forest", 1422: "Western Plaguelands",
    1423: "Eastern Plaguelands", 1424: "Hillsbrad Foothills", 1425: "The Hinterlands",
    1426: "Dun Morogh", 1427: "Searing Gorge", 1428: "Burning Steppes", 1429: "Elwynn Forest",
    1430: "Deadwind Pass", 1431: "Duskwood", 1432: "Loch Modan", 1433: "Redridge Mountains",
    1434: "Stranglethorn Vale", 1435: "Swamp of Sorrows", 1436: "Westfall", 1437: "Wetlands",
    1438: "Teldrassil", 1439: "Darkshore", 1440: "Ashenvale", 1441: "Thousand Needles",
    1442: "Stonetalon Mountains", 1443: "Desolace", 1444: "Feralas", 1445: "Dustwallow Marsh",
    1446: "Tanaris", 1447: "Azshara", 1448: "Felwood", 1449: "Un'Goro Crater", 1450: "Moonglade",
    1451: "Silithus", 1452: "Winterspring", 1453: "Stormwind City", 1454: "Orgrimmar",
    1455: "Ironforge", 1456: "Thunder Bluff", 1457: "Darnassus", 1458: "Undercity",
}
ALIASES = {"stormwindclassic": "Stormwind City", "redridge": "Redridge Mountains",
           "stonetalon": "Stonetalon Mountains", "barrens": "The Barrens"}

KIND_STYLE = {  # kind -> (marker, colour, label)
    "accept": ("^", "#2e9e44", "accept"),
    "turnin": ("s", "#2f6fdb", "turn in"),
    "complete": ("o", "#e8871e", "objective"),
    "travel": ("*", "#8e44ad", "fly / zone / hearth"),
    "service": ("D", "#8d6e63", "vendor / trainer / FP"),
    "other": (".", "#777777", "other"),
}
STATUS_HELP = OrderedDict([
    ("OK", "accepted and turned in (in this order) somewhere in the loaded guides"),
    ("ORDER", "first turn-in comes before the first accept"),
    ("ACCEPT_ONLY", "accepted but never turned in"),
    ("TURNIN_ONLY", "turned in but never accepted in the loaded guides (accepted elsewhere?)"),
    ("COMPLETE_ONLY", "objective step exists but no accept or turn-in"),
    ("SKIPPED", "only appears in steps marked '<< skip' or filtered out by --class/--race"),
])
KNOWN_DOT = {
    "goto", "waypoint", "line", "accept", "turnin", "complete", "fly", "hs", "zone", "fp", "home",
    "vendor", "trainer", "use", "cast", "usespell", "collect", "mob", "target", "unitscan", "subzone",
    "subzoneskip", "zoneskip", "skill", "xp", "isonquest", "isquestturnedin", "isquestcomplete",
    "isquestavailable", "itemcount", "itemstat", "group", "solo", "xprate", "timer", "abandon", "destroy",
    "bankdeposit", "gossipoption", "cooldown", "bronzetube", "disablecheckbox", "train", "deathskip",
    "equip", "money", "maxlevel", "level", "emote", "stickystart", "stickystop", "dungeon", "buy",
    "isqueststarted", "race", "class", "faction",
}

# ----------------------------------------------------------------------------- data classes
@dataclass
class Point:
    zone: str
    mapid: Optional[int]
    system: str          # 'pct' or 'world'
    x: float
    y: float
    radius: Optional[float]
    flag: Optional[float]
    tag: Optional[str]
    line_no: int


@dataclass
class Action:
    cmd: str             # accept / turnin / complete
    qid: int
    obj: Optional[int]
    name: Optional[str]
    tag: Optional[str]
    negative: bool
    line_no: int


@dataclass
class Step:
    idx: int
    tag: Optional[str]
    line_no: int
    label: Optional[str] = None
    completewith: list = field(default_factory=list)
    requires: list = field(default_factory=list)
    optional: bool = False
    sticky: bool = False
    xprate: Optional[str] = None
    points: list = field(default_factory=list)
    polylines: list = field(default_factory=list)
    actions: list = field(default_factory=list)
    conds: list = field(default_factory=list)      # (cmd, [ids])
    cmds: set = field(default_factory=set)
    texts: list = field(default_factory=list)
    zone: Optional[str] = None


@dataclass
class Guide:
    order: int
    file: str
    name: str = "(unnamed)"
    group: str = ""
    subgroup: str = ""
    nxt: str = ""
    steps: list = field(default_factory=list)
    lint: list = field(default_factory=list)   # (level, line_no, message)


# ----------------------------------------------------------------------------- parsing
GUIDE_RE = re.compile(r"RegisterGuide\(\[\[(.*?)\]\]\)", re.S)
COMMENT_RE = re.compile(r"(^|\s)--.*$")
TAG_RE = re.compile(r"\s<<\s*([^<>]*?)\s*$")
GLUED_STEP_RE = re.compile(r"\w+step(\s*<<.*)?$")


def canon_zone(name: str) -> str:
    key = name.strip().lower().replace(" ", "")
    return ALIASES.get(key, name.strip())


def parse_zone_token(tok: str):
    tok = tok.strip()
    m = re.fullmatch(r"(\d+)/(\d+)", tok)
    if m:
        mid = int(m.group(1))
        return MAP_NAMES.get(mid, f"map {mid}"), mid, "world"
    if tok.isdigit():
        mid = int(tok)
        return MAP_NAMES.get(mid, f"map {mid}"), mid, "pct"
    return canon_zone(tok), None, "pct"


def to_floats(parts):
    out = []
    for p in parts:
        p = p.strip()
        if not p:
            continue
        try:
            out.append(float(p))
        except ValueError:
            break
    return out


def clean_line(raw: str):
    s = COMMENT_RE.sub("", raw.rstrip("\n"))
    tag = None
    m = TAG_RE.search(s)
    if m:
        tag = m.group(1).strip() or None
        s = s[: m.start()]
    return s.strip(), tag


def parse_guide(body: str, fname: str, base_line: int, order: int) -> Guide:
    g = Guide(order=order, file=fname)
    step: Optional[Step] = None
    for off, raw in enumerate(body.split("\n")):
        line_no = base_line + off
        stripped = raw.strip()
        if not stripped or stripped.startswith("--"):
            continue
        if GLUED_STEP_RE.search(COMMENT_RE.sub("", stripped)) and not stripped.startswith(("step", ">>")):
            g.lint.append(("error", line_no, f"'step' glued to the end of another line: {stripped[:70]}"))
        s, tag = clean_line(raw)
        if not s:
            continue
        # ---- step header
        m = re.match(r"step\b(.*)$", s)
        if m:
            step = Step(idx=len(g.steps) + 1, tag=tag, line_no=line_no)
            rest = m.group(1).strip()
            if rest and not rest.startswith("<<"):
                g.lint.append(("warn", line_no, f"text after 'step': {rest[:60]}"))
            g.steps.append(step)
            continue
        # ---- hash directives
        if s.startswith("#"):
            parts = s[1:].split(None, 1)
            if not parts:
                continue
            key, val = parts[0].lower(), (parts[1].strip() if len(parts) > 1 else "")
            if step is None:
                if key == "name":
                    g.name = val
                elif key == "next":
                    g.nxt = val
                elif key == "group":
                    g.group = val
                elif key == "subgroup":
                    g.subgroup = val
                continue
            if key == "label":
                step.label = val
            elif key == "completewith":
                step.completewith.append(val)
            elif key == "requires":
                step.requires.append(val)
            elif key == "optional":
                step.optional = True
            elif key == "sticky":
                step.sticky = True
            elif key == "xprate":
                step.xprate = val
            continue
        if step is None:
            continue  # header junk such as '<< Alliance'
        # ---- text lines
        if s.startswith((">>", "+", "*")):
            step.texts.append(re.sub(r"\|c[0-9A-Fa-f]{8}|\|r|\|T[^|]*\|t", "", s.lstrip(">+*")).strip())
            continue
        # ---- dot commands
        m = re.match(r"\.(\w+)\s*(.*)$", s)
        if not m:
            g.lint.append(("error", line_no, f"unknown line inside step {step.idx}: {stripped[:60]}"))
            continue
        cmd, rest = m.group(1).lower(), m.group(2)
        pre, _, msg = rest.partition(">>")
        pre, msg = pre.strip(), msg.strip()
        step.cmds.add(cmd)
        if cmd not in KNOWN_DOT:
            g.lint.append(("warn", line_no, f"unrecognised command .{cmd} in step {step.idx}"))
        if cmd in ("goto", "waypoint"):
            parts = pre.split(",")
            if len(parts) >= 3:
                zone, mid, system = parse_zone_token(parts[0])
                nums = to_floats(parts[1:])
                if len(nums) >= 2:
                    step.points.append(Point(zone, mid, system, nums[0], nums[1],
                                             nums[2] if len(nums) > 2 else None,
                                             nums[3] if len(nums) > 3 else None, tag, line_no))
        elif cmd == "line":
            parts = pre.split(",")
            zone, mid, system = parse_zone_token(parts[0])
            nums = to_floats(parts[1:])
            pts = [Point(zone, mid, system, nums[i], nums[i + 1], None, None, tag, line_no)
                   for i in range(0, len(nums) - 1, 2)]
            if pts:
                step.polylines.append(pts)
        elif cmd in ("accept", "turnin", "complete"):
            mq = re.match(r"(-?\d+)(?:\s*,\s*(\d+))?", pre)
            if mq:
                qid = int(mq.group(1))
                name = None
                mn = re.match(r"(?:Accept|Turn in|Turnin)\s+(.*)$", msg, re.I)
                if mn:
                    name = mn.group(1).strip()
                step.actions.append(Action(cmd, abs(qid), int(mq.group(2)) if mq.group(2) else None,
                                           name, tag, qid < 0, line_no))
            else:
                g.lint.append(("warn", line_no, f"could not read quest id: {stripped[:60]}"))
        elif cmd in ("isonquest", "isquestturnedin", "isquestcomplete", "isquestavailable"):
            ids = [int(x) for x in re.findall(r"\d+", pre)]
            step.conds.append((cmd, ids))
        if msg and cmd not in ("accept", "turnin", "complete"):
            step.texts.append(re.sub(r"\|c[0-9A-Fa-f]{8}|\|r|\|T[^|]*\|t", "", msg).strip())
    # zone of each step: last goto, else previous step's zone
    prev = None
    for st in g.steps:
        if st.points:
            prev = st.points[-1].zone
        st.zone = prev
    return g


def parse_files(paths):
    guides = []
    for p in paths:
        with open(p, encoding="utf-8", errors="replace") as fh:
            text = fh.read()
        for m in GUIDE_RE.finditer(text):
            base = text.count("\n", 0, m.start(1)) + 1
            guides.append(parse_guide(m.group(1), os.path.basename(p), base, len(guides)))
    return guides


# ----------------------------------------------------------------------------- filtering
def has_skip(tag):
    if not tag:
        return False
    return any(a.lower() == "skip" for tok in tag.split() for a in tok.split("/"))


def class_visible(tag, attrs):
    """attrs=None -> ignore class/race tags. Otherwise evaluate '<< A/B !C' style tags."""
    if not tag or attrs is None:
        return True
    for tok in tag.split():
        ok = False
        for a in tok.split("/"):
            neg = a.startswith("!")
            name = a.lstrip("!").lower()
            val = name in attrs
            ok = ok or (not val if neg else val)
        if not ok:
            return False
    return True


class Filter:
    def __init__(self, class_=None, race=None):
        self.attrs = None
        if class_ or race:
            self.attrs = {"alliance"} | ({class_.lower()} if class_ else set()) | ({race.lower()} if race else set())

    def live(self, *tags):
        return all(not has_skip(t) and class_visible(t, self.attrs) for t in tags)


# ----------------------------------------------------------------------------- analysis
@dataclass
class Event:
    guide: Guide
    step: Step
    action: Action
    live: bool

    @property
    def pos(self):
        return (self.guide.order, self.step.idx)


def collect_events(guides, flt: Filter):
    events = defaultdict(list)
    for g in guides:
        for st in g.steps:
            for a in st.actions:
                events[a.qid].append(Event(g, st, a, flt.live(st.tag, a.tag)))
    return events


def quest_status(evs):
    live = [e for e in evs if e.live]
    if not live:
        return "SKIPPED", []
    acc = [e for e in live if e.action.cmd == "accept"]
    tin = [e for e in live if e.action.cmd == "turnin"]
    cmp_ = [e for e in live if e.action.cmd == "complete"]
    flags = []
    if acc and tin:
        status = "OK" if min(e.pos for e in acc) <= min(e.pos for e in tin) else "ORDER"
    elif acc:
        status = "ACCEPT_ONLY"
        if cmp_:
            flags.append("objective done, never turned in")
    elif tin:
        status = "TURNIN_ONLY"
    else:
        status = "COMPLETE_ONLY"
    if all(e.step.optional for e in live):
        flags.append("optional")
    tags = {e.step.tag or e.action.tag for e in live}
    if None not in tags and tags:
        flags.append("class: " + ", ".join(sorted(t for t in tags if t)))
    if any(e.step.xprate for e in live):
        flags.append("xprate " + next(e.step.xprate for e in live if e.step.xprate))
    if any(e.action.negative for e in live):
        flags.append("optional turn-in (-id)")
    return status, flags


def lint_guides(guides, events, flt: Filter):
    turned_in = {q for q, evs in events.items() if any(e.live and e.action.cmd == "turnin" for e in evs)}
    accepted = {q for q, evs in events.items() if any(e.live and e.action.cmd == "accept" for e in evs)}
    for g in guides:
        labels = defaultdict(list)
        for st in g.steps:
            if st.label:
                labels[st.label].append(st)
        for lab, sts in labels.items():
            if len(sts) > 1:
                g.lint.append(("error", sts[1].line_no, f"label '{lab}' defined twice (steps {', '.join(str(s.idx) for s in sts)})"))
        for st in g.steps:
            for ref in st.completewith + st.requires:
                if ref.lower() == "next":
                    continue
                if ref not in labels:
                    g.lint.append(("error", st.line_no, f"step {st.idx}: label '{ref}' is not defined in this guide"))
                elif all(not flt.live(x.tag) for x in labels[ref]):
                    g.lint.append(("warn", st.line_no, f"step {st.idx}: label '{ref}' only exists in skipped/filtered steps"))
            for cmd, ids in st.conds:
                if cmd == "isquestturnedin":
                    for q in ids:
                        if q not in turned_in:
                            g.lint.append(("warn", st.line_no, f"step {st.idx} needs quest {q} turned in, but no live step turns it in"))
                elif cmd == "isonquest":
                    for q in ids:
                        if q not in accepted:
                            g.lint.append(("info", st.line_no, f"step {st.idx} needs quest {q} in the log, but no live step accepts it"))


def load_xp_table(path):
    """Returns {id: dict(name, level, req, xp)} from a TSV/CSV with an ID and an Exp column."""
    with open(path, encoding="utf-8", errors="replace") as fh:
        text = fh.read()
    delim = "\t" if "\t" in text.split("\n", 1)[0] else ","
    rows = list(csv.reader(io.StringIO(text), delimiter=delim))
    if not rows:
        return {}
    header = [c.strip().lower() for c in rows[0]]
    if "id" in header and ("exp" in header or "xp" in header):
        i_id, i_xp = header.index("id"), header.index("exp" if "exp" in header else "xp")
        i_name = header.index("name") if "name" in header else None
        i_lvl = header.index("level") if "level" in header else None
        i_req = header.index("req") if "req" in header else None
        data = rows[1:]
    else:  # zone, id, name, level, req, exp
        i_id, i_name, i_lvl, i_req, i_xp = 1, 2, 3, 4, 5
        data = rows
    out = {}
    for r in data:
        try:
            qid = int(r[i_id])
            xp = int(float(r[i_xp])) if r[i_xp].strip() else 0
        except (ValueError, IndexError):
            continue
        out[qid] = {"name": r[i_name] if i_name is not None and i_name < len(r) else "",
                    "level": r[i_lvl] if i_lvl is not None and i_lvl < len(r) else "",
                    "req": r[i_req] if i_req is not None and i_req < len(r) else "", "xp": xp}
    return out


# ----------------------------------------------------------------------------- plotting
def step_kind(st: Step):
    kinds = {a.cmd for a in st.actions}
    if "accept" in kinds:
        return "accept"
    if "turnin" in kinds:
        return "turnin"
    if "complete" in kinds:
        return "complete"
    if st.cmds & {"fly", "hs", "zone"}:
        return "travel"
    if st.cmds & {"vendor", "trainer", "fp", "home"}:
        return "service"
    return "other"


def convert_point(p: Point, bounds):
    """Return (x, y, system_used) in plotting space."""
    if p.system == "pct":
        return p.x, p.y, "pct"
    b = bounds.get(str(p.mapid)) or bounds.get(p.zone)
    if b:
        (a0, a1), (b0, b1) = b["A"], b["B"]
        return (p.x - a0) / (a1 - a0) * 100.0, (p.y - b0) / (b1 - b0) * 100.0, "pct"
    return -p.x, p.y, "world"   # east = -A, north = B


def find_background(maps_dir, zone, mapid):
    if not maps_dir:
        return None
    from PIL import Image  # lazy import
    cands = [zone]
    if mapid:
        cands.append(str(mapid))
    for c in cands:
        for ext in (".png", ".jpg", ".jpeg"):
            path = os.path.join(maps_dir, c + ext)
            if os.path.exists(path):
                return Image.open(path)
    return None


def draw_zone(zone, system, entries, title, bg=None, include_skipped=False):
    """entries: list of (step, [(x,y,point)...], skipped)"""
    fig, ax = plt.subplots(figsize=(7.2, 7.2), dpi=100)
    if system == "pct":
        ax.set_xlim(0, 100)
        ax.set_ylim(100, 0)
        if bg is not None:
            ax.imshow(bg, extent=[0, 100, 100, 0], aspect="auto", zorder=0)
        ax.grid(alpha=0.25)
    else:
        ax.grid(alpha=0.25)
    ax.set_aspect("equal", adjustable="datalim" if system == "world" else "box")
    cmap = plt.get_cmap("viridis")
    n = max(1, len(entries) - 1)
    prev_anchor = None
    for rank, (st, pts, skipped) in enumerate(entries):
        colour = "#999999" if skipped else cmap(rank / n)
        xs = [p[0] for p in pts]
        ys = [p[1] for p in pts]
        if len(pts) > 1:
            ax.plot(xs, ys, "-", color=colour, lw=0.8, alpha=0.5, zorder=2, linestyle="--" if skipped else "-")
        for (px, py, pt) in pts[:-1]:
            ax.plot(px, py, ".", color=colour, ms=3, alpha=0.6, zorder=2)
        ax_, ay_ = pts[-1][0], pts[-1][1]
        marker, mcol, _ = KIND_STYLE[step_kind(st)]
        face = "none" if (skipped or st.optional) else (mcol if marker != "." else colour)
        ax.plot(ax_, ay_, marker, mfc=face, mec=colour if skipped else mcol, ms=8 if marker != "." else 6,
                mew=1.2, zorder=4)
        ax.annotate(str(st.idx), (ax_, ay_), textcoords="offset points", xytext=(4, 4), fontsize=6.5,
                    color="#222222", zorder=5)
        if prev_anchor is not None and not skipped:
            ax.annotate("", xy=(ax_, ay_), xytext=prev_anchor,
                        arrowprops=dict(arrowstyle="->", color=colour, lw=0.7, alpha=0.55), zorder=3)
        if not skipped:
            prev_anchor = (ax_, ay_)
    handles = [Line2D([], [], marker=m, color="w", mfc=c, mec=c, ms=8, label=l)
               for (m, c, l) in KIND_STYLE.values() if m != "."]
    handles.append(Line2D([], [], marker="o", color="w", mfc="none", mec="#555", ms=8, label="optional / skipped"))
    ax.legend(handles=handles, loc="upper left", bbox_to_anchor=(1.01, 1), fontsize=8, frameon=False)
    ax.set_title(title, fontsize=10)
    ax.set_xlabel("x (%)" if system == "pct" else "east  (world units)")
    ax.set_ylabel("y (%)" if system == "pct" else "north  (world units)")
    buf = io.BytesIO()
    fig.savefig(buf, format="png", bbox_inches="tight")
    plt.close(fig)
    return buf.getvalue()



# ----------------------------------------------------------------------------- combined interactive maps
NAME_TO_ID = {v.lower(): k for k, v in MAP_NAMES.items()}
KALIMDOR_IDS = {1411, 1412, 1413, 1414, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447,
                1448, 1449, 1450, 1451, 1452, 1454, 1456, 1457}
EK_IDS = set(range(1415, 1438)) | {1453, 1455, 1458}


def zone_id(zone, mapid):
    return mapid or NAME_TO_ID.get((zone or "").lower())


def continent_of(zone, mapid):
    mid = zone_id(zone, mapid)
    if mid in KALIMDOR_IDS:
        return "Kalimdor"
    if mid in EK_IDS:
        return "Eastern Kingdoms"
    return "Other"


def get_bounds(zone, mapid, bounds):
    mid = zone_id(zone, mapid)
    for key in (str(mid), zone, (zone or "").lower()):
        if key in bounds:
            return bounds[key]
    return None


def point_world(p, bounds):
    """Point -> world coordinates (A, B) as used by '1439/1,A,B' (A west-positive, B north-positive)."""
    if p.system == "world":
        return p.x, p.y
    b = get_bounds(p.zone, p.mapid, bounds)
    if not b:
        return None
    (a0, a1), (b0, b1) = b["A"], b["B"]
    return a0 + p.x / 100.0 * (a1 - a0), b0 + p.y / 100.0 * (b1 - b0)


def convex_hull(pts):
    pts = sorted(set(pts))
    if len(pts) < 3:
        return pts

    def cross(o, a, b):
        return (a[0] - o[0]) * (b[1] - o[1]) - (a[1] - o[1]) * (b[0] - o[0])
    lower, upper = [], []
    for p in pts:
        while len(lower) >= 2 and cross(lower[-2], lower[-1], p) <= 0:
            lower.pop()
        lower.append(p)
    for p in reversed(pts):
        while len(upper) >= 2 and cross(upper[-2], upper[-1], p) <= 0:
            upper.pop()
        upper.append(p)
    return lower[:-1] + upper[:-1]


def compress_ranges(nums):
    nums = sorted(set(nums))
    out, i = [], 0
    while i < len(nums):
        j = i
        while j + 1 < len(nums) and nums[j + 1] == nums[j] + 1:
            j += 1
        out.append(str(nums[i]) if i == j else f"{nums[i]}-{nums[j]}")
        i = j + 1
    return ",".join(out)


def step_summary(st, names):
    if st.actions:
        bits = []
        for a in st.actions[:3]:
            nm = a.name or names.get(a.qid, "")
            bits.append(f"{a.cmd} {a.qid} {nm}".strip())
        if len(st.actions) > 3:
            bits.append(f"+{len(st.actions) - 3} more")
        return "; ".join(bits)
    if st.texts:
        return st.texts[0][:80]
    return ", ".join(sorted(st.cmds - {"goto", "waypoint"})) or "move"



class ImageRegistry:
    """Finds map images in a directory and embeds each one once (as <image> in a hidden <defs>)."""

    def __init__(self, maps_dir, max_px=1400, opacity=0.45):
        self.opacity = opacity
        self.max_px = max_px
        self.files = {}
        self.ids = {}
        self.defs = []
        self.notes = []
        self.used = []
        if maps_dir and os.path.isdir(maps_dir):
            for f in os.listdir(maps_dir):
                stem, ext = os.path.splitext(f)
                if ext.lower() in (".png", ".jpg", ".jpeg", ".webp"):
                    self.files.setdefault(re.sub(r"[^a-z0-9]", "", stem.lower()), os.path.join(maps_dir, f))

    def get(self, label, mapid=None):
        keys = [re.sub(r"[^a-z0-9]", "", (label or "").lower())] + ([str(mapid)] if mapid else [])
        for k in keys:
            if k in self.files:
                path = self.files[k]
                if path not in self.ids:
                    self._embed(path)
                    self.used.append(os.path.basename(path))
                return self.ids.get(path)
        return None

    def _embed(self, path):
        from PIL import Image
        im = Image.open(path)
        im.load()
        if max(im.size) > self.max_px:
            im.thumbnail((self.max_px, self.max_px))
        alpha = im.mode in ("RGBA", "LA") or (im.mode == "P" and "transparency" in im.info)
        buf = io.BytesIO()
        if alpha:
            im.convert("RGBA").save(buf, "PNG", optimize=True)
            mime = "image/png"
        else:
            im.convert("RGB").save(buf, "JPEG", quality=82)
            mime = "image/jpeg"
        iid = f"bgimg{len(self.ids)}"
        self.ids[path] = iid
        self.defs.append(f'<image id="{iid}" width="1" height="1" preserveAspectRatio="none" '
                         f'href="data:{mime};base64,{base64.b64encode(buf.getvalue()).decode()}"/>')

    def use(self, iid, x, y, w, h):
        return (f'<use class="bgimg" href="#{iid}" transform="translate({x:.1f} {y:.1f}) scale({w:.1f} {h:.1f})" '
                f'opacity="{self.opacity}"/>')

    def defs_html(self):
        if not self.defs:
            return ""
        return '<svg width="0" height="0" style="position:absolute"><defs>' + "".join(self.defs) + "</defs></svg>"

SHAPES = {  # kind -> svg shape in pixel units centred on 0,0
    "accept": '<path class="shape" d="M0,-7 L6.5,5 L-6.5,5 Z"/>',
    "turnin": '<rect class="shape" x="-5" y="-5" width="10" height="10"/>',
    "complete": '<circle class="shape" r="5"/>',
    "travel": '<path class="shape" d="M0,-8 L2.3,-2.5 L8,-2.5 L3.4,1.3 L5,7 L0,3.6 L-5,7 L-3.4,1.3 L-8,-2.5 L-2.3,-2.5 Z"/>',
    "service": '<path class="shape" d="M0,-7 L6,0 L0,7 L-6,0 Z"/>',
    "other": '<circle class="shape" r="3"/>',
}
KIND_PRIORITY = ["accept", "turnin", "complete", "travel", "service", "other"]


def build_map_items(items, bounds, flt, args, names):
    """items: [(guide, step)] -> {continent: [dict]} (one dict per located step)"""
    out = defaultdict(list)
    for rank, (g, st) in enumerate(items):
        skipped = has_skip(st.tag)
        if skipped and not args.include_skipped:
            continue
        if not skipped and not class_visible(st.tag, flt.attrs):
            continue
        pts = []
        for p in st.points:
            if has_skip(p.tag) and not args.include_skipped:
                continue
            if not class_visible(p.tag, flt.attrs):
                continue
            w = point_world(p, bounds)
            if w:
                pts.append((p, (-w[0], -w[1])))      # svg space: x = east, y grows southwards
        if not pts:
            continue
        last = pts[-1][0]
        area = last.flag == 0 or last.radius == 0
        coords = [c for _, c in pts]
        if area:
            ax = sum(c[0] for c in coords) / len(coords)
            ay = sum(c[1] for c in coords) / len(coords)
            hull = convex_hull(coords) if len(coords) >= 3 else []
        else:
            ax, ay = pts[-1][1]
            hull = []
        out[continent_of(last.zone, last.mapid)].append({
            "guide": g, "step": st, "x": ax, "y": ay, "area": area, "hull": hull, "kind": step_kind(st),
            "zone": last.zone, "mapid": zone_id(last.zone, last.mapid), "skipped": skipped,
            "summary": step_summary(st, names), "rank": len(out[continent_of(last.zone, last.mapid)]),
        })
    return out


def render_svg_map(uid, entries, bounds, args, color_by="order", guides_in_map=None, cont=None, registry=None):
    cmap = plt.get_cmap("turbo")
    pal = plt.get_cmap("tab10")
    n = len(entries)
    for i, e in enumerate(entries):
        if color_by == "guide":
            e["color"] = matplotlib.colors.to_hex(pal(e["guide"].order % 10))
        else:
            e["color"] = matplotlib.colors.to_hex(cmap(0.05 + 0.9 * i / max(1, n - 1)))
    # zone rectangles
    zones = {}
    for e in entries:
        b = get_bounds(e["zone"], e["mapid"], bounds)
        if b and e["zone"] not in zones:
            (a0, a1), (b0, b1) = b["A"], b["B"]
            zones[e["zone"]] = (min(-a0, -a1), min(-b0, -b1), abs(a1 - a0), abs(b1 - b0))
    xs = [e["x"] for e in entries] + [z[0] for z in zones.values()] + [z[0] + z[2] for z in zones.values()]
    ys = [e["y"] for e in entries] + [z[1] for z in zones.values()] + [z[1] + z[3] for z in zones.values()]
    minx, maxx, miny, maxy = min(xs), max(xs), min(ys), max(ys)
    pad = 0.04 * max(maxx - minx, maxy - miny, 1)
    minx, miny, maxx, maxy = minx - pad, miny - pad, maxx + pad, maxy + pad
    W, H = maxx - minx, maxy - miny
    maxdim = max(W, H)
    # clustering of nearby anchors
    eps = args.cluster * maxdim
    clusters = []
    for e in entries:
        if e["area"] or e["skipped"]:
            clusters.append({"cx": e["x"], "cy": e["y"], "members": [e]})
            continue
        for c in clusters:
            if len(c["members"]) and not c["members"][0]["area"] and not c["members"][0]["skipped"] \
                    and (c["cx"] - e["x"]) ** 2 + (c["cy"] - e["y"]) ** 2 <= eps * eps:
                c["members"].append(e)
                m = len(c["members"])
                c["cx"] += (e["x"] - c["cx"]) / m
                c["cy"] += (e["y"] - c["cy"]) / m
                break
        else:
            clusters.append({"cx": e["x"], "cy": e["y"], "members": [e]})
    svg = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="{minx:.1f} {miny:.1f} {W:.1f} {H:.1f}" '
           f'width="100%" height="100%" preserveAspectRatio="xMidYMid meet">']
    if registry is not None and cont and cont != "Other":
        cb = get_bounds(cont, None, bounds)
        iid = registry.get(cont)
        if iid and cb:
            (a0, a1), (b0, b1) = cb["A"], cb["B"]
            svg.append(registry.use(iid, min(-a0, -a1), min(-b0, -b1), abs(a1 - a0), abs(b1 - b0)))
        elif iid:
            registry.notes.append(f"{cont}: image found but the bounds file has no entry for it")
    for zn, (x, y, w, h) in zones.items():
        iid = registry.get(zn, NAME_TO_ID.get(zn.lower())) if registry is not None else None
        if iid:
            svg.append(registry.use(iid, x, y, w, h))
        svg.append(f'<rect class="zone{" hasimg" if iid else ""}" x="{x:.1f}" y="{y:.1f}" width="{w:.1f}" height="{h:.1f}"/>')
    # hulls (grind / area steps)
    for e in entries:
        if e["hull"]:
            pts = " ".join(f"{px:.1f},{py:.1f}" for px, py in e["hull"])
            svg.append(f'<polygon class="hull" points="{pts}" fill="{e["color"]}" stroke="{e["color"]}"/>')
    # path segments (between cluster centres, skipping moves inside one cluster)
    cl_of = {id(m): c for c in clusters for m in c["members"]}
    prev = None
    for e in entries:
        if e["skipped"]:
            continue
        c = cl_of[id(e)]
        if prev is not None and prev["c"] is not c:
            far = ((prev["c"]["cx"] - c["cx"]) ** 2 + (prev["c"]["cy"] - c["cy"]) ** 2) ** 0.5 > 0.22 * maxdim
            cls = "seg far" if (far or prev["zone"] != e["zone"]) else "seg"
            svg.append(f'<line class="{cls}" x1="{prev["c"]["cx"]:.1f}" y1="{prev["c"]["cy"]:.1f}" '
                       f'x2="{c["cx"]:.1f}" y2="{c["cy"]:.1f}" stroke="{prev["color"]}"/>')
        prev = {"c": c, "zone": e["zone"], "color": e["color"]}
    # markers
    rows = []
    for ci, c in enumerate(clusters):
        mem = c["members"]
        kinds = {m["kind"] for m in mem}
        kind = next(k for k in KIND_PRIORITY if k in kinds)
        colour = KIND_STYLE[kind][1]
        nums = compress_ranges([m["step"].idx for m in mem if m["guide"] is mem[0]["guide"]])
        multi = len({m["guide"].order for m in mem}) > 1
        label = nums if not multi else f"{len(mem)} steps"
        tips = []
        for m in mem[:14]:
            gtxt = f"{m['guide'].name} / " if guides_in_map else ""
            tips.append(f"{gtxt}{m['step'].idx} [{m['kind']}] {m['summary']}")
        if len(mem) > 14:
            tips.append(f"... +{len(mem) - 14} more")
        mid = f"{uid}_m{ci}"
        show = args.labels == "all" or (args.labels == "key" and kinds & {"accept", "turnin", "travel"})
        hollow = all(m["skipped"] or m["step"].optional for m in mem)
        ring = '<circle class="ring" r="10"/>' if len(mem) > 1 else ""
        txt = f'<text class="lbl" x="9" y="-8">{esc(label)}</text>' if show else ""
        style = f'fill="{"none" if hollow else colour}" stroke="{colour}"'
        svg.append(f'<g class="mk" id="{mid}" data-x="{c["cx"]:.1f}" data-y="{c["cy"]:.1f}" '
                   f'data-tip="{esc(chr(10).join(tips)).replace(chr(10), "&#10;")}" {style}>{ring}{SHAPES[kind]}{txt}</g>')
        for m in mem:
            rows.append((m["rank"], mid, m, kind))
    for zn, (x, y, w, h) in zones.items():
        svg.append(f'<g class="mk zl" data-x="{x + 4:.1f}" data-y="{y + 4:.1f}"><text x="0" y="12">{esc(zn)}</text></g>')
    svg.append("</svg>")
    # sidebar rows
    rows.sort(key=lambda r: (r[2]["guide"].order, r[2]["step"].idx))
    side = ["<table><tr><th>step</th><th>zone</th><th>what</th></tr>"]
    for _, mid, m, kind in rows:
        gcol = f"<span class='gtag'>{esc(m['guide'].name)}</span> " if guides_in_map else ""
        side.append(f"<tr class='steprow' data-m='{mid}'><td style='color:{KIND_STYLE[kind][1]}'>{m['step'].idx}</td>"
                    f"<td>{esc(m['zone'])}</td><td>{gcol}{esc(m['summary'])}</td></tr>")
    side.append("</table>")
    legend = "".join(f"<span class='lg'><svg width='16' height='16' viewBox='-9 -9 18 18' fill='{c}' stroke='{c}'>"
                     f"{SHAPES[k]}</svg>{l}</span>" for k, (m_, c, l) in KIND_STYLE.items() if k != "other")
    return (f"<div class='legend'>{legend}<span class='lg'>scroll = zoom, drag = pan, hover = details, click a row = jump"
            f"</span></div><div class='mapbox'><div class='mapwrap'>{''.join(svg)}<div class='tip'></div>"
            f"<button class='fit'>fit</button></div><div class='side'>{''.join(side)}</div></div>")


MAP_JS = r"""
(function(){
function init(box){
  var svg=box.querySelector('svg'), tip=box.querySelector('.tip'), wrap=box.querySelector('.mapwrap');
  var base=svg.getAttribute('viewBox').split(' ').map(Number), vb=base.slice();
  var mks=[].slice.call(svg.querySelectorAll('.mk'));
  function scale(){
    var m=svg.getScreenCTM(); if(!m){return;} var k=1/m.a;
    mks.forEach(function(g){ g.setAttribute('transform','translate('+g.dataset.x+' '+g.dataset.y+') scale('+k+')'); });
  }
  function apply(){ svg.setAttribute('viewBox',vb.join(' ')); scale(); }
  function toSvg(e){ var p=svg.createSVGPoint(); p.x=e.clientX; p.y=e.clientY; return p.matrixTransform(svg.getScreenCTM().inverse()); }
  svg.addEventListener('wheel',function(e){
    e.preventDefault(); var f=e.deltaY<0?0.8:1.25, c=toSvg(e);
    vb[0]=c.x-(c.x-vb[0])*f; vb[1]=c.y-(c.y-vb[1])*f; vb[2]*=f; vb[3]*=f; apply();
  },{passive:false});
  var drag=null;
  svg.addEventListener('mousedown',function(e){ drag={x:e.clientX,y:e.clientY}; });
  window.addEventListener('mouseup',function(){ drag=null; });
  window.addEventListener('mousemove',function(e){
    if(!drag){return;} var m=svg.getScreenCTM(); if(!m){return;}
    vb[0]-=(e.clientX-drag.x)/m.a; vb[1]-=(e.clientY-drag.y)/m.a;
    drag={x:e.clientX,y:e.clientY}; apply();
  });
  mks.forEach(function(g){
    if(!g.dataset.tip){return;}
    g.addEventListener('mouseenter',function(){ tip.textContent=g.dataset.tip; tip.style.display='block'; });
    g.addEventListener('mousemove',function(e){
      var r=wrap.getBoundingClientRect(); tip.style.left=(e.clientX-r.left+14)+'px'; tip.style.top=(e.clientY-r.top+14)+'px';
    });
    g.addEventListener('mouseleave',function(){ tip.style.display='none'; });
  });
  box.querySelectorAll('.steprow').forEach(function(row){
    var g=svg.getElementById(row.dataset.m);
    row.addEventListener('mouseenter',function(){ if(g){g.classList.add('hl');} });
    row.addEventListener('mouseleave',function(){ if(g){g.classList.remove('hl');} });
    row.addEventListener('click',function(){
      if(!g){return;} var f=0.12; vb[2]=base[2]*f; vb[3]=base[3]*f;
      vb[0]=(+g.dataset.x)-vb[2]/2; vb[1]=(+g.dataset.y)-vb[3]/2; apply();
    });
  });
  box.querySelector('.fit').addEventListener('click',function(){ vb=base.slice(); apply(); });
  window.addEventListener('resize',scale); apply();
}
function boot(){ document.querySelectorAll('.mapbox').forEach(init); }
if(document.readyState==='loading'){document.addEventListener('DOMContentLoaded',boot);}else{boot();}
})();
"""

MAP_CSS = """
.legend{font-size:12px;margin:6px 0}.lg{margin-right:14px;display:inline-flex;align-items:center;gap:4px}
.mapbox{display:flex;gap:10px;height:760px;margin-bottom:18px}
.mapwrap{position:relative;flex:1;border:1px solid #bbb;background:#f6f4ec;overflow:hidden}
.mapwrap svg{display:block;cursor:grab}.side{width:380px;overflow:auto;font-size:12px;border:1px solid #ddd}
.side table{margin:0;width:100%}.steprow{cursor:pointer}.steprow:hover{background:#fff6cc}
.gtag{background:#eee;border-radius:3px;padding:0 3px;font-size:11px}
.tip{position:absolute;display:none;pointer-events:none;background:#222;color:#fff;padding:5px 8px;font-size:11px;
 border-radius:3px;white-space:pre;max-width:520px;z-index:5}
.fit{position:absolute;right:8px;top:8px;z-index:6}
.zone{fill:#ffffff;fill-opacity:.55;stroke:#aaa;stroke-width:1;vector-effect:non-scaling-stroke}\n.zone.hasimg{fill-opacity:0}
.zl text{font-size:11px;fill:#777;font-weight:600;stroke:none}
.seg{stroke-width:1.6;stroke-opacity:.75;vector-effect:non-scaling-stroke}
.seg.far{stroke-dasharray:5 4;stroke-opacity:.35}
.hull{fill-opacity:.16;stroke-width:1;stroke-opacity:.5;vector-effect:non-scaling-stroke}
.mk .shape{stroke-width:1.2}.mk .ring{fill:none;stroke:#222;stroke-width:1;stroke-dasharray:2 2}
.mk .lbl{font-size:10.5px;fill:#111;stroke:#fff;stroke-width:2.5px;paint-order:stroke;font-weight:600}
.mk.hl .shape{stroke:#d00;stroke-width:3}.mk:hover .shape{stroke:#d00;stroke-width:2.5}
"""

# ----------------------------------------------------------------------------- report
CSS = """
body{font-family:Segoe UI,Arial,sans-serif;margin:24px;max-width:1200px;color:#222}
h1{margin-bottom:4px} h2{margin-top:36px;border-bottom:2px solid #ccc;padding-bottom:4px}
h3{margin-top:22px} table{border-collapse:collapse;font-size:13px;margin:8px 0}
td,th{border:1px solid #ccc;padding:3px 8px;text-align:left;vertical-align:top}
th{background:#f0f0f0} .OK{background:#e3f6e6}.ORDER{background:#fde1e1}.ACCEPT_ONLY{background:#fff1d6}
.TURNIN_ONLY{background:#e3eefc}.COMPLETE_ONLY{background:#f3e6fa}.SKIPPED{background:#eee;color:#777}
.error{color:#b00020}.warn{color:#a15c00}.info{color:#555} img{max-width:100%;border:1px solid #ddd}
.small{font-size:12px;color:#555} code{background:#f4f4f4;padding:0 3px}
"""
CSS += MAP_CSS


def esc(x):
    return html.escape(str(x))


def fmt_pos(evs, cmd):
    pts = [e for e in evs if e.action.cmd == cmd]
    if not pts:
        return ""
    out = []
    for e in sorted(pts, key=lambda e: e.pos):
        s = f"{e.step.idx}" + ("" if e.live else "*")
        out.append(s)
    return ", ".join(out)


def build_report(guides, events, xp, flt, args):
    os.makedirs(os.path.join(args.out, "maps"), exist_ok=True)
    bounds = {}
    if args.bounds:
        with open(args.bounds) as fh:
            bounds = json.load(fh)
    names = {}
    for q, evs in events.items():
        for e in evs:
            if e.action.name:
                names.setdefault(q, e.action.name)
    status_cache = {q: quest_status(evs) for q, evs in events.items()}
    counted_xp = set()
    registry = ImageRegistry(args.maps, args.map_max_px, args.map_opacity) if args.maps else None
    parts = [f"<html><head><meta charset='utf-8'><title>Guide report</title><style>{CSS}</style></head><body>",
             "<h1>Guide report</h1>"]
    defs_idx = len(parts)
    parts.append("")
    # ---- legend
    parts.append("<p class='small'>Quest status legend: " + "; ".join(
        f"<b>{k}</b> = {v}" for k, v in STATUS_HELP.items()) +
        ". Step numbers followed by <b>*</b> are in skipped/filtered steps. Positions are <code>step</code> numbers within the guide the quest appears in.</p>")
    # ---- overview table
    parts.append("<h2>Overview</h2><table><tr><th>#</th><th>Guide</th><th>Next</th><th>Steps</th><th>Quests accepted</th>"
                 "<th>Quests turned in</th><th>XP turned in</th><th>Lint</th></tr>")
    guide_xp = {}
    for g in guides:
        acc, tin, total = set(), set(), 0
        for st in g.steps:
            for a in st.actions:
                if not flt.live(st.tag, a.tag):
                    continue
                if a.cmd == "accept":
                    acc.add(a.qid)
                elif a.cmd == "turnin":
                    tin.add(a.qid)
                    if a.qid not in counted_xp:
                        counted_xp.add(a.qid)
                        total += xp.get(a.qid, {}).get("xp", 0)
        guide_xp[g.order] = total
        errs = sum(1 for l in g.lint if l[0] == "error")
        parts.append(f"<tr><td>{g.order + 1}</td><td><a href='#g{g.order}'>{esc(g.name)}</a></td><td>{esc(g.nxt)}</td>"
                     f"<td>{len(g.steps)}</td><td>{len(acc)}</td><td>{len(tin)}</td>"
                     f"<td>{total if xp else '-'}</td><td>{len(g.lint)} ({errs} errors)</td></tr>")
    parts.append("</table>")
    names_all = names
    if args.all_guides_map and bounds:
        items = [(g, st) for g in guides for st in g.steps]
        per_cont = build_map_items(items, bounds, flt, args, names_all)
        for cont, entries in per_cont.items():
            parts.append(f"<h2>All guides - {esc(cont)}</h2><p class='small'>colour = guide; "
                         f"{len(entries)} located steps</p>")
            parts.append(render_svg_map(f"all_{re.sub(r'[^A-Za-z]', '', cont)}", entries, bounds, args, "guide", True,
                                         cont=cont, registry=registry))
    # ---- per guide
    for g in guides:
        parts.append(f"<h2 id='g{g.order}'>{esc(g.name)}</h2><p class='small'>{esc(g.file)} - {len(g.steps)} steps - "
                     f"next: {esc(g.nxt) or '-'}</p>")
        if g.lint:
            parts.append("<h3>Lint</h3><ul>")
            for lvl, ln, msg in sorted(g.lint, key=lambda x: x[1]):
                parts.append(f"<li class='{lvl}'>[{lvl}] line {ln}: {esc(msg)}</li>")
            parts.append("</ul>")
        if bounds and not args.no_combined:
            per_cont = build_map_items([(g, st) for st in g.steps], bounds, flt, args, names)
            for cont, entries in per_cont.items():
                parts.append(f"<h3>{esc(cont)} - combined map</h3>")
                parts.append(render_svg_map(f"g{g.order}_{re.sub(r'[^A-Za-z]', '', cont)}", entries, bounds, args,
                                             cont=cont, registry=registry))
            lacking = sorted({p.zone for st in g.steps for p in st.points
                              if p.system == 'pct' and not get_bounds(p.zone, p.mapid, bounds)})
            if lacking:
                parts.append(f"<p class='small'>No bounds for: {esc(', '.join(lacking))} "
                             f"(percent-coordinate steps there are not on the combined map)</p>")
        elif not bounds and not args.no_combined:
            parts.append("<p class='small'>Combined map needs --bounds (see --help).</p>")
        zones = OrderedDict()
        for st in g.steps:
            if st.zone:
                zones.setdefault(st.zone, []).append(st)
        for zone, sts in zones.items():
            parts.append(f"<h3>{esc(zone)}</h3>")
            # ---- maps (one per coordinate system after optional conversion)
            by_sys = defaultdict(list)
            mapid = None
            for st in sts:
                per_sys = defaultdict(list)
                skipped = has_skip(st.tag)
                if skipped and not args.include_skipped:
                    continue
                if not skipped and not class_visible(st.tag, flt.attrs):
                    continue
                for p in st.points:
                    if p.zone != zone or has_skip(p.tag) and not args.include_skipped:
                        continue
                    if not class_visible(p.tag, flt.attrs):
                        continue
                    mapid = mapid or p.mapid
                    x, y, system = convert_point(p, bounds)
                    per_sys[system].append((x, y, p))
                for system, pts in per_sys.items():
                    by_sys[system].append((st, pts, skipped or any(has_skip(p[2].tag) for p in pts)))
            for system, entries in (by_sys.items() if args.zone_maps else []):
                title = f"{g.name} - {zone} ({'map %' if system == 'pct' else 'world coords'})"
                bg = find_background(args.maps, zone, mapid) if system == "pct" else None
                png = draw_zone(zone, system, entries, title, bg, args.include_skipped)
                fname = f"g{g.order}_{re.sub(r'[^A-Za-z0-9]+', '_', zone)}_{system}.png"
                with open(os.path.join(args.out, "maps", fname), "wb") as fh:
                    fh.write(png)
                parts.append(f"<img src='data:image/png;base64,{base64.b64encode(png).decode()}' alt='{esc(title)}'>")
            # ---- quest table for this zone
            qids = OrderedDict()
            for st in sts:
                for a in st.actions:
                    qids.setdefault(a.qid, st.idx)
            if not qids:
                parts.append("<p class='small'>No quest actions in this zone.</p>")
                continue
            cols = "<th>ID</th><th>Quest</th>" + ("<th>Lvl/Req</th><th>XP</th>" if xp else "") + \
                   "<th>Accept steps</th><th>Turn-in steps</th><th>Objective steps</th><th>Status</th><th>Notes</th>"
            parts.append(f"<table><tr>{cols}</tr>")
            for q, first in qids.items():
                evs = [e for e in events[q] if e.guide is g]
                status, flags = status_cache[q]
                allevs = events[q]
                where = ""
                if any(e.guide is not g for e in allevs):
                    others = sorted({e.guide.name for e in allevs if e.guide is not g})
                    where = "also in: " + "; ".join(others)
                nm = xp.get(q, {}).get("name") or names.get(q, "")
                xcells = ""
                if xp:
                    info = xp.get(q)
                    xcells = (f"<td>{esc(info['level'])}/{esc(info['req'])}</td><td>{info['xp']}</td>" if info
                              else "<td>?</td><td>?</td>")
                notes = "; ".join([*flags, where] if where else flags)
                parts.append(f"<tr class='{status}'><td>{q}</td><td>{esc(nm)}</td>{xcells}"
                             f"<td>{fmt_pos(evs, 'accept')}</td><td>{fmt_pos(evs, 'turnin')}</td>"
                             f"<td>{fmt_pos(evs, 'complete')}</td><td>{status}</td><td>{esc(notes)}</td></tr>")
            parts.append("</table>")
    if registry is not None:
        parts[defs_idx] = registry.defs_html()
        info = f"map images used: {', '.join(registry.used) or 'none found'}"
        if registry.notes:
            info += " | " + " | ".join(sorted(set(registry.notes)))
        parts.insert(defs_idx + 1, f"<p class='small'>{esc(info)}</p>")
    parts.append("<script>" + MAP_JS + "</script></body></html>")
    with open(os.path.join(args.out, "index.html"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(parts))
    return status_cache, names


# ----------------------------------------------------------------------------- main
def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("files", nargs="+")
    ap.add_argument("-o", "--out", default="report")
    ap.add_argument("--xp-table")
    ap.add_argument("--class", dest="class_")
    ap.add_argument("--race")
    ap.add_argument("--include-skipped", action="store_true")
    ap.add_argument("--maps")
    ap.add_argument("--bounds")
    ap.add_argument("--guide")
    ap.add_argument("--json")
    ap.add_argument("--zone-maps", action="store_true", help="also draw the old static per-zone PNG maps")
    ap.add_argument("--all-guides-map", action="store_true", help="one big map per continent for all guides")
    ap.add_argument("--no-combined", action="store_true", help="skip the combined per-guide maps")
    ap.add_argument("--labels", choices=["key", "all", "none"], default="key",
                    help="step labels on the map: key (accept/turn-in/travel), all, none")
    ap.add_argument("--cluster", type=float, default=0.012,
                    help="merge steps closer than this fraction of the map size into one marker (default 0.012)")
    ap.add_argument("--map-opacity", type=float, default=0.45, help="opacity of background map images (default 0.45)")
    ap.add_argument("--map-max-px", type=int, default=1400, help="downscale map images to this many pixels (default 1400)")
    args = ap.parse_args(argv)

    guides = parse_files(args.files)
    if not guides:
        sys.exit("No RegisterGuide([[ ... ]]) blocks found.")
    if args.guide:
        keep = [g for g in guides if args.guide.lower() in g.name.lower()]
        for i, g in enumerate(keep):
            pass
        guides_all = guides
        guides = keep
    else:
        guides_all = guides
    flt = Filter(args.class_, args.race)
    events = collect_events(guides_all, flt)       # lifecycle always uses ALL guides
    lint_guides(guides_all, events, flt)
    xp = load_xp_table(args.xp_table) if args.xp_table else {}
    status_cache, names = build_report(guides, events, xp, flt, args)

    counts = defaultdict(int)
    for st, _ in status_cache.values():
        counts[st] += 1
    print(f"{len(guides)} guides, {sum(len(g.steps) for g in guides)} steps, {len(status_cache)} quests")
    print("  " + ", ".join(f"{k}={v}" for k, v in sorted(counts.items())))
    for g in guides:
        for lvl, ln, msg in sorted(g.lint, key=lambda x: x[1]):
            if lvl != "info":
                print(f"  [{g.name}] {lvl} line {ln}: {msg}")
    print(f"report -> {os.path.join(args.out, 'index.html')}")
    if args.json:
        data = {"quests": {str(q): {"name": names.get(q, ""), "status": s, "flags": f}
                           for q, (s, f) in status_cache.items()},
                "lint": {g.name: [{"level": l, "line": n, "msg": m} for l, n, m in g.lint] for g in guides}}
        with open(args.json, "w", encoding="utf-8") as fh:
            json.dump(data, fh, indent=1)


if __name__ == "__main__":
    main()
