#!/usr/bin/env python3
"""
Idempotent metrics computation for Mage Knight minis.
Queries the webapp database models (via webapp.app) and computes:
 - global medians for stats
 - per-click medians for stats
 - point-cost fixed bins medians (0-24,25-49,...,125-149,150+)
 - equal-count quantile bins (default 5)
 - per-mini aggregated stats (max over clicks for speed/attack/defense/damage, range from Miniature)
 - per-mini metrics: global and bin median difference, percentile, robust z-score (MAD)
Writes deterministic JSON to data/minis_metrics.json (overwrites).

Usage: python3 scripts/compute_metrics.py
"""

from __future__ import annotations
import os
import json
from datetime import datetime
from statistics import median
from typing import List, Dict, Any

# Try to import models and Session from the webapp so DB config is reused.
# If webapp dependencies are missing (Flask, etc.) fall back to reading minis_merged.json.
USE_DB = False
Session = None
joinedload = None

try:
    from webapp.app import Session as _Session, Miniature as _Miniature, ClickStat as _ClickStat
    from sqlalchemy.orm import joinedload as _joinedload
    USE_DB = True
    Session = _Session
    Miniature = _Miniature
    ClickStat = _ClickStat
    joinedload = _joinedload
except Exception:
    # Fallback: will read minis_merged.json from repo root
    USE_DB = False


def load_minis_from_json():
    """Load minis from minis_merged.json and return a list of dicts with keys:
    id, name, point_cost, range, clicks (list of dicts with click_number, speed, attack, defense, damage)
    """
    root = os.path.dirname(os.path.dirname(__file__))
    path = os.path.join(root, 'minis_merged.json')
    if not os.path.exists(path):
        raise FileNotFoundError(f"minis_merged.json not found at {path}; cannot load minis.")
    with open(path, 'r') as f:
        data = json.load(f)
    minis = []
    for idx, m in enumerate(data.get('miniatures', [])):
        mid = m.get('id') or m.get('collector_number') or idx
        clicks = []
        for c in m.get('clicks', []):
            clicks.append({
                'click_number': c.get('click_number'),
                'speed': c.get('speed') if c.get('speed') is not None else None,
                'attack': c.get('attack') if c.get('attack') is not None else None,
                'defense': c.get('defense') if c.get('defense') is not None else None,
                'damage': c.get('damage') if c.get('damage') is not None else None,
            })
        minis.append({
            'id': mid,
            'name': m.get('name'),
            'point_cost': m.get('point_cost') if m.get('point_cost') is not None else 0,
            'range': m.get('range'),
            'clicks': clicks
        })
    return minis

# Configuration
POINT_BIN_SIZE = 25
POINT_BIN_LIMIT = 150
POINT_BINS = []
for start in range(0, POINT_BIN_LIMIT, POINT_BIN_SIZE):
    end = start + POINT_BIN_SIZE - 1
    POINT_BINS.append((start, end))
POINT_BINS.append((POINT_BIN_LIMIT, None))  # 150+
POINT_BIN_LABELS = [f"{a}-{b}" if b is not None else f"{a}+" for (a, b) in POINT_BINS]

QUANTILE_BINS = 5
MIN_BIN_SIZE = 10  # fallback to global if bin too small
STATS = ["attack", "defense", "speed", "damage", "range"]


def point_bin_label(point_cost: int) -> str:
    for (start, end), label in zip(POINT_BINS, POINT_BIN_LABELS):
        if end is None:
            if point_cost >= start:
                return label
        else:
            if point_cost >= start and point_cost <= end:
                return label
    return "unknown"


def robust_mad_z(value: float, data: List[float]) -> float:
    if not data:
        return 0.0
    med = median(data)
    deviations = [abs(x - med) for x in data]
    mad = median(deviations)
    if mad == 0:
        # fallback to simple standardized score using mean/std if mad=0
        # but avoid importing numpy; return 0 if no variation
        return 0.0
    # Consistent scaling to approximate z-score
    return 0.6745 * (value - med) / mad


def percentile_rank(value: float, data: List[float]) -> float:
    if not data:
        return 0.0
    sorted_data = sorted(data)
    count = len(sorted_data)
    # percentage of values <= value
    num_le = sum(1 for x in sorted_data if x <= value)
    return 100.0 * (num_le - 0.5) / count


def quantile_bin_index(sorted_points: List[int], point_cost: int, num_bins: int) -> int:
    # Build quantile thresholds by splitting sorted list into equal-sized bins
    if not sorted_points:
        return 0
    n = len(sorted_points)
    # compute bin edges (indices)
    for i in range(num_bins):
        start_idx = int(i * n / num_bins)
        end_idx = int((i + 1) * n / num_bins) - 1
        # pick representative value range
        low = sorted_points[start_idx]
        high = sorted_points[end_idx]
        if i == num_bins - 1:
            if point_cost >= low:
                return i
        else:
            if point_cost >= low and point_cost <= high:
                return i
    return num_bins - 1


def compute():
    # Load minis from DB if available, else from JSON
    minis_list = []
    db_session = None
    if USE_DB:
        db_session = Session()
        minis_objs = db_session.query(Miniature).options(joinedload(Miniature.clicks)).all()
        for mini in minis_objs:
            clicks = []
            for click in mini.clicks:
                clicks.append({
                    'click_number': click.click_number,
                    'speed': click.speed,
                    'attack': click.attack,
                    'defense': click.defense,
                    'damage': click.damage,
                })
            minis_list.append({
                'id': mini.id,
                'name': mini.name,
                'point_cost': mini.point_cost if mini.point_cost is not None else 0,
                'range': mini.range,
                'clicks': clicks
            })
    else:
        minis_list = load_minis_from_json()

    # Prepare containers
    per_click_values: Dict[int, Dict[str, List[int]]] = {}
    mini_aggregated: Dict[int, Dict[str, Any]] = {}
    all_point_costs: List[int] = []

    for mini in minis_list:
        cid = mini.get('id')
        # collect click-level stats
        max_stats = {s: None for s in STATS}
        for click in mini.get('clicks', []):
            click_num = click.get('click_number') or 1
            # record per-click lists
            if click_num not in per_click_values:
                per_click_values[click_num] = {s: [] for s in STATS}
            # speed, attack, defense, damage come from click; range from mini
            if click.get('speed') is not None:
                per_click_values[click_num]["speed"].append(click.get('speed'))
                max_stats["speed"] = max_stats["speed"] if (max_stats["speed"] is not None and max_stats["speed"] >= click.get('speed')) else click.get('speed')
            if click.get('attack') is not None:
                per_click_values[click_num]["attack"].append(click.get('attack'))
                max_stats["attack"] = max_stats["attack"] if (max_stats["attack"] is not None and max_stats["attack"] >= click.get('attack')) else click.get('attack')
            if click.get('defense') is not None:
                per_click_values[click_num]["defense"].append(click.get('defense'))
                max_stats["defense"] = max_stats["defense"] if (max_stats["defense"] is not None and max_stats["defense"] >= click.get('defense')) else click.get('defense')
            if click.get('damage') is not None:
                per_click_values[click_num]["damage"].append(click.get('damage'))
                max_stats["damage"] = max_stats["damage"] if (max_stats["damage"] is not None and max_stats["damage"] >= click.get('damage')) else click.get('damage')
        # range is on the miniature (single value)
        if mini.get('range') is not None:
            max_stats["range"] = mini.get('range')
        # store aggregated
        point_cost = mini.get('point_cost') if mini.get('point_cost') is not None else 0
        mini_aggregated[cid] = {
            "id": cid,
            "name": mini.get('name'),
            "point_cost": point_cost,
            "stats": max_stats
        }
        all_point_costs.append(point_cost)

    # compute click medians
    click_medians: Dict[str, Dict[str, float]] = {}
    for click_num, stats_map in per_click_values.items():
        click_medians[str(click_num)] = {}
        for s in STATS:
            vals = stats_map.get(s, [])
            if vals:
                click_medians[str(click_num)][s] = median(vals)
            else:
                click_medians[str(click_num)][s] = None

    # compute global medians using aggregated per-mini values (max per mini)
    global_values: Dict[str, List[float]] = {s: [] for s in STATS}
    for m in mini_aggregated.values():
        for s in STATS:
            v = m["stats"].get(s)
            if v is not None:
                global_values[s].append(v)
    global_medians = {s: (median(global_values[s]) if global_values[s] else None) for s in STATS}

    # compute point bins medians
    point_bins_data: Dict[str, Dict[str, List[float]]] = {label: {s: [] for s in STATS} for label in POINT_BIN_LABELS}
    for m in mini_aggregated.values():
        label = point_bin_label(m["point_cost"])
        for s in STATS:
            v = m["stats"].get(s)
            if v is not None:
                point_bins_data[label][s].append(v)
    point_bins_medians = {label: {s: (median(vals) if vals else None) for s, vals in stats_map.items()} for label, stats_map in point_bins_data.items()}

    # compute quantile bins medians
    sorted_points = sorted(all_point_costs)
    quantile_bins_data: Dict[int, Dict[str, List[float]]] = {i: {s: [] for s in STATS} for i in range(QUANTILE_BINS)}
    for m in mini_aggregated.values():
        qb = quantile_bin_index(sorted_points, m["point_cost"], QUANTILE_BINS)
        for s in STATS:
            v = m["stats"].get(s)
            if v is not None:
                quantile_bins_data[qb][s].append(v)
    quantile_bins_medians = {str(i): {s: (median(vals) if vals else None) for s, vals in stats_map.items()} for i, stats_map in quantile_bins_data.items()}

    # per-mini metrics
    result_minis: Dict[str, Any] = {}
    for m in mini_aggregated.values():
        cid = m["id"]
        label = point_bin_label(m["point_cost"])
        qb = quantile_bin_index(sorted_points, m["point_cost"], QUANTILE_BINS)
        stats_metrics = {}
        for s in STATS:
            val = m["stats"].get(s)
            if val is None:
                stats_metrics[s] = None
                continue
            # choose which bin median to use; fallback to global if bin too small
            bin_vals = point_bins_data[label][s]
            if len(bin_vals) < MIN_BIN_SIZE:
                bin_m = global_medians[s]
            else:
                bin_m = median(bin_vals) if bin_vals else global_medians[s]
            q_vals = quantile_bins_data[qb][s]
            if len(q_vals) < MIN_BIN_SIZE:
                q_m = global_medians[s]
            else:
                q_m = median(q_vals) if q_vals else global_medians[s]

            g_vals = global_values[s]
            g_m = global_medians[s]

            stats_metrics[s] = {
                "value": val,
                "global_median": g_m,
                "point_bin_median": bin_m,
                "quantile_bin_median": q_m,
                "point_bin": label,
                "quantile_bin": qb,
                "global_percentile": percentile_rank(val, g_vals) if g_vals else None,
                "point_bin_percentile": percentile_rank(val, bin_vals) if bin_vals else None,
                "quantile_bin_percentile": percentile_rank(val, q_vals) if q_vals else None,
                "global_z": robust_mad_z(val, g_vals),
                "point_bin_z": robust_mad_z(val, bin_vals),
                "quantile_bin_z": robust_mad_z(val, q_vals),
            }
        result_minis[str(cid)] = {
            "id": cid,
            "name": m["name"],
            "point_cost": m["point_cost"],
            "stats": stats_metrics
        }

    out = {
        "meta": {
            "generated_at": datetime.utcnow().isoformat() + 'Z',
            "point_bins": POINT_BIN_LABELS,
            "quantile_bins": QUANTILE_BINS,
            "min_bin_size": MIN_BIN_SIZE,
            "stats": STATS
        },
        "global_medians": global_medians,
        "click_medians": click_medians,
        "point_bin_medians": point_bins_medians,
        "quantile_bin_medians": quantile_bins_medians,
        "minis": result_minis
    }

    # ensure data directory
    out_path = os.path.join(os.path.dirname(__file__), '..', 'data', 'minis_metrics.json')
    out_dir = os.path.dirname(out_path)
    os.makedirs(out_dir, exist_ok=True)
    with open(out_path, 'w') as f:
        json.dump(out, f, indent=2, sort_keys=True)

    print(f"Wrote metrics to {out_path}")
    if db_session:
        db_session.close()


if __name__ == '__main__':
    compute()
