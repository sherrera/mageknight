# API Reference

All endpoints return JSON. Errors return `{ "error": "message" }` with an appropriate HTTP status.

---

## Health

### `GET /api/health`

Verifies the server is up and the database is reachable.

**Response**
```json
{ "status": "ok", "miniatures": 1084 }
```

---

## Miniatures

### `GET /api/minis/filters`

Returns distinct values for populating filter dropdowns. Ranks are normalised to
uppercase and deduplicated (the source data had inconsistent casing from scraping).

**Response**
```json
{
  "factions": ["Atlantis Guild", "Black Powder Rebels", ...],
  "ranks": ["PROMO", "STANDARD", "TOUGH", "UNIQUE", "WEAK"],
  "abilities": [{ "name": "AQUATIC", "color": "#ffff00" }, ...],
  "rangeTargets": [1, 2, 3, 4]
}
```

---

### `GET /api/minis`

Returns miniatures with click stats. All query parameters are optional.

**Query parameters**

| Parameter | Type | Description |
|---|---|---|
| `name` | string | Case-insensitive substring match on name |
| `faction` | string (repeatable) | Filter to minis belonging to any of these factions |
| `rank` | string (repeatable) | Filter to minis of any of these ranks (case-insensitive) |
| `ability` | string (repeatable) | Filter to minis that have ALL listed abilities (AND semantics) |
| `min_cost` | number | Minimum point cost (inclusive) |
| `max_cost` | number | Maximum point cost (inclusive) |
| `min_speed` | number | Must have at least one click with speed ≥ this value |
| `min_attack` | number | Must have at least one click with attack ≥ this value |
| `min_defense` | number | Must have at least one click with defense ≥ this value |
| `min_damage` | number | Must have at least one click with damage ≥ this value |
| `min_range` | number | Range value on the miniature itself ≥ this value |
| `max_range` | number | Range value on the miniature itself ≤ this value |
| `range_targets` | number (repeatable) | Filter to minis that target any of the given counts |
| `min_clicks` | number | Minimum number of live (non-KO) clicks |
| `sort_by` | `name` \| `point_cost` \| `set_name` \| `rank` | Default: `name` |
| `sort_order` | `asc` \| `desc` | Default: `asc` |

Stat minimum filters are evaluated independently: `min_speed=8&min_attack=7` means
"has some click with speed ≥ 8" AND "has some click with attack ≥ 7" — not
necessarily the same click.

`ability` uses AND semantics: `ability=CHARGE&ability=TOUGHNESS` returns only minis
that have both abilities somewhere on their dial.

`min_clicks` counts only live clicks (where any stat > 0). Implemented as a
post-filter in application code since Prisma cannot efficiently count a filtered
relation in a WHERE clause.

**Response** — array of miniature objects:
```json
[
  {
    "id": 1,
    "name": "GNOLL HUNTER",
    "set_name": "mkd",
    "rank": "WEAK",
    "point_cost": 8,
    "collector_number": 1,
    "frq": 1,
    "arc": 90,
    "range": 0,
    "range_targets": 1,
    "image_url": "/images/mkd/1.jpeg",
    "factions": ["Mage Spawn"],
    "clicks": [
      {
        "click_number": 0,
        "speed": 8, "attack": 7, "defense": 14, "damage": 2,
        "speed_ability": null,
        "attack_ability": { "name": "CHARGE", "color": "#3B82F6" },
        "defense_ability": null,
        "damage_ability": null
      }
    ]
  }
]
```

---

### `GET /api/minis/:id`

Returns a single miniature with full click stats.

**Response** — same shape as a single item from `GET /api/minis`.

**Errors**
- `400 Bad Request` — id is not a number
- `404 Not Found` — no miniature with this id

---

## Collection

### `GET /api/collection`

Returns all collection items with full miniature data, sorted by name.

**Response**
```json
[{ "quantity": 2, "miniature": { ...same shape as GET /api/minis item... } }]
```

---

### `POST /api/collection`

Adds a mini to the collection. Idempotent — if already present, increments quantity by 1.

**Body** `{ "miniature_id": 42 }`

**Response** `200` if updated, `201` if newly created. Returns the collection item.

---

### `PUT /api/collection/:miniatureId`

Sets quantity directly. Used by the +/- controls.

**Body** `{ "quantity": 3 }` — must be ≥ 1.

---

### `DELETE /api/collection/:miniatureId`

Removes the mini from the collection entirely. Returns `204 No Content`.

---

## Armies

### `GET /api/armies`

Lists all armies with summary stats.

**Response**
```json
[{
  "id": 1, "name": "Tournament Build", "description": "…",
  "created_at": "…",
  "mini_count": 5, "total_quantity": 8, "total_points": 120
}]
```

---

### `POST /api/armies`

Creates a new empty army.

**Body** `{ "name": "My Army", "description": "optional" }`

**Response** `201` — same shape as a single item from `GET /api/armies`.

---

### `GET /api/armies/:id`

Returns full army detail with miniature click dials.

**Response**
```json
{
  "id": 1, "name": "My Army", "description": "…",
  "created_at": "…", "total_points": 120,
  "miniatures": [{ "quantity": 2, "miniature": { ...same shape as GET /api/minis item... } }]
}
```

---

### `PUT /api/armies/:id`

Updates army name and/or description. Omit a field to leave it unchanged.

**Body** `{ "name": "New Name", "description": "…" }`

---

### `DELETE /api/armies/:id`

Deletes the army and all its miniature rows. Returns `204 No Content`.

---

### `POST /api/armies/:id/miniatures`

Adds a mini to the army. Idempotent — if already present, increments quantity.

**Body** `{ "miniature_id": 42, "quantity": 1 }`

**Response** `200` if updated, `201` if newly added. Returns `{ quantity, miniature }`.

---

### `PUT /api/armies/:id/miniatures/:miniatureId`

Sets the quantity of a specific mini in the army. Must be ≥ 1.

**Body** `{ "quantity": 3 }`

---

### `DELETE /api/armies/:id/miniatures/:miniatureId`

Removes a mini from the army. Returns `204 No Content`.
