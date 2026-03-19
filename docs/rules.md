# Mage Knight Rules Reference

> Compiled from: Rebellion Rules (Jan 2001), Whirlwind Rules (Nov 2001), Unlimited Special Abilities Card (Jan 2002).
> **Capturing rules are excluded** — not used in play.

---

## The Combat Dial

Each warrior has a rotating dial under its base. Five stats are shown through the stat slot:

| Symbol | Stat | Notes |
|--------|------|-------|
| Boot / Horseshoe | **Speed** | Inches of movement per action |
| Sword | **Attack** | Added to 2d6 roll to hit |
| Shield | **Defense** | Target number to hit this warrior |
| Star | **Damage** | Clicks dealt on a hit |
| Arrow | **Range** | Max inches for ranged attack (printed on base, never changes) |

- Each click of **damage** = advance dial clockwise one step (stats typically worsen)
- Each click of **healing** = advance dial counter-clockwise one step (never past Starting Position)
- **Eliminated**: as soon as 3 skulls show through the stat slot → remove from battlefield

---

## Turns and Actions

- Players alternate turns. Turn order is clockwise.
- Each player gets **1 action per 100 pts** of army build total (e.g. 200-pt army → 2 actions/turn).
- Action total never decreases even as warriors are eliminated.
- Each warrior may receive **at most 1 action per turn**.
- Unused actions are lost; actions cannot be saved between turns.

**Available actions:**
1. **Move** — move a warrior up to its speed value in inches
2. **Ranged Combat** — ranged attack (requires range > 0 and not in base contact with an opposing figure)
3. **Close Combat** — melee attack (requires front arc in base contact with target)
4. **Pass** — warrior does nothing

---

## Pushing

If a warrior is given a non-pass action on **two consecutive turns**, it takes **1 click of damage** after resolving the second action. Mark with 2 action tokens.

A warrior **may not be given 3 consecutive non-pass actions** under any circumstances.

> Scoring implication: warriors with more live clicks can sustain more actions before being pushed to death. Durability directly enables more total actions.

---

## Movement

- Move up to speed value in inches (flexible ruler, measured to center of base).
- Movement path may **not** cross any figure base and may **not** pass between two figures in base contact.
- Warrior may face any direction after moving.

**Breaking Away:** If warrior in base contact with an opposing figure wants to move away, roll 1d6:
- 1–3: fail — may not move (may rotate)
- 4–6: success — move normally
- *Exception:* CHARGE, BOUND, FLIGHT warriors only fail on a 1.
- *Exception:* Mounted warriors only fail on a 1.

**Free Spin:** When an opposing figure moves into base contact with your warrior, your warrior may immediately spin to bring any part of its front arc into contact — costs no action, no pushing.

---

## Ranged Combat

**Requirements:**
- Range value > 0
- Not currently in base contact with any opposing figure
- Line of fire (LoF) must pass through the warrior's **front arc**
- LoF must be ≤ range value in length
- LoF **blocked** if it crosses any figure base (friendly or opposing) other than the firer and target
- May not target an opposing figure that is in base contact with a **friendly** figure

**Resolution:** Roll 2d6 + ATK ≥ DEF → hit

**Damage on hit:** Target's dial advances clockwise by the attacker's **damage** value.

**Multiple targets:** If a warrior fires at more than one target in a single action, damage is always **1** per target (regardless of damage value).

---

## Close Combat

**Requirements:**
- Attacker's **front arc** must be in base contact with the target

**Resolution:** Roll 2d6 + ATK ≥ DEF → hit

**Rear arc bonus:** +1 to the attack roll if attacker is in contact with the **target's rear arc**.

**Damage on hit:** Target's dial advances clockwise by the attacker's **damage** value.

---

## Critical Rolls (apply to both ranged and close combat)

| Roll | Effect |
|------|--------|
| **2** | **Critical Miss** — automatic miss regardless of ATK. Attacker takes 1 click of damage (self-inflicted). |
| **12** | **Critical Hit** — automatic hit regardless of DEF. Deals **+1 extra click** of damage on top of normal damage value. |

> Critical hit against multiple ranged targets: the +1 extra damage applies to **all** targets successfully hit.

---

## Hit Probability Reference

`Target number = DEF − ATK` (the minimum 2d6 roll needed to hit, excluding the auto-hit/miss rules)

| DEF − ATK | Min roll needed | ~Hit chance |
|-----------|----------------|-------------|
| ≤ 2 | Always (only 2 auto-misses) | ~94% |
| 3 | 3+ | ~94% |
| 4 | 4+ | ~92% |
| 5 | 5+ | ~83% |
| 6 | 6+ | ~72% |
| 7 | 7+ | ~58% |
| 8 | 8+ | ~42% |
| 9 | 9+ | ~28% |
| 10 | 10+ | ~17% |
| 11 | 11+ | ~8% |
| 12 | Only on 12 | ~3% |
| > 12 | Only on 12 | ~3% |

> 2 always misses, 12 always hits — so effective range is [3%, 94%].

---

## Damage Absorption Abilities

These abilities **reduce damage received** and are critical for scoring:

### TOUGHNESS
- Reduces damage from ranged and close combat attacks (and most ability damage) by **1 click**.
- DMG 1 → 0 effective damage
- DMG 2 → 1 effective damage
- Does **not** reduce pushing damage or critical miss self-damage.

### INVULNERABILITY
- **+2 DEF** vs ranged combat attacks (stacks with other modifiers)
- Reduces damage from ranged and close combat attacks (and most ability damage) by **2 clicks**
- DMG 1 → 0, DMG 2 → 0, DMG 3 → 1 effective damage
- Critical hit (roll 12) adds +1, so DMG 2 + critical hit = 3 − 2 = **1** (this is the Elven Recruit's only way to hurt a Tormented Soul)
- Does **not** reduce pushing damage or critical miss self-damage.
- **Cannot be healed.**

### BATTLE ARMOR
- **+2 DEF** vs ranged attacks only. Does not reduce damage after a hit.

### DODGE
- After being **successfully hit**, roll 1d6. On 4, 5, or 6 (50%) — attack misses instead.
- Effectively halves all damage received from any source.

### PIERCE (attack ability, listed here for context)
- Attacker with PIERCE **ignores** Battle Armor, Toughness, and Invulnerability on ranged attacks.

---

## All Special Abilities

### Speed Special Abilities

| Ability | Color | Effect |
|---------|-------|--------|
| **CHARGE** | Green | Move + close combat in one action. May move up to 2× speed. Only fails break away on 1. Cannot be in formation. |
| **QUICKNESS** | Red | Free move action without spending one of your actions. Marked with token normally. Cannot be in movement formation. |
| **MAGIC LEVITATION** | Blue | Give move action but don't move self. Move a target friendly or opposing figure up to 10" ignoring terrain. Target can't act rest of turn. |
| **FLIGHT** | Orange | Ignore all terrain and figure bases while moving. Can't end in blocking terrain or on another base. Only fails break away on 1. Cannot be in movement formation. |
| **AQUATIC** | Yellow | Not hindered or blocked by water terrain. May end move in deep water. |
| **STEALTH** | Black | Lines of fire passing through hindering terrain to this warrior are treated as blocked. |
| **BOUND** | Gray | Move + ranged combat in one action. May move up to 2× speed. Only fails break away on 1. Cannot be in formation. |
| **FORCE MARCH** | Red | All figures in movement formation with this warrior use this warrior's speed value. |
| **NIMBLE** | Blue | May change facing any time during turn without an action. |
| **RAM** | Black | When this warrior's front arc comes into base contact during movement, opposing figure(s) take 1 click damage. Cannot be in movement formation. |

### Defense Special Abilities

| Ability | Color | Effect |
|---------|-------|--------|
| **BATTLE ARMOR** | Green | +2 DEF vs ranged attacks. |
| **POLE ARM** | Red | If opposing figure moves into base contact with this warrior's front arc, that figure takes 1 click damage and its action ends. |
| **MAGIC IMMUNITY** | Blue | Immune to all abilities with "Magic" in the name. Unaffected by Magic Enhancement damage bonus. |
| **TOUGHNESS** | Orange | −1 damage from attacks and most ability damage. Doesn't affect pushing or critical miss. |
| **DEFEND** | Yellow | Friendly figures in base contact may use this warrior's defense value instead of their own. (Optional) |
| **REGENERATION** | Black | Give move action, don't move. Roll 1d6 − 2 (min 0) = clicks healed on self. (Optional) |
| **INVULNERABILITY** | Gray | +2 DEF vs ranged. −2 damage from all attacks and most ability damage. Cannot be healed. Doesn't affect pushing or critical miss. |
| **DODGE** | Red | After being hit, roll 1d6. 4–6 = attack misses instead. (Optional) |
| **MAGIC RETALIATION** | Blue | When damaged by an attack, attacker takes 1 click damage. |
| **LIMITED INVISIBILITY** | Black | Cannot be targeted by ranged combat actions. (Optional) |

### Attack Special Abilities

| Ability | Color | Effect |
|---------|-------|--------|
| **HEALING** | Green | Close combat action targeting a friendly figure. If hits, use damage value (or 1d6) to heal that many clicks. Neither can be near opposing figures. (Optional) |
| **WEAPON MASTER** | Red | Close combat action. If hits, roll 1d6 — that's the damage instead of normal damage value. (Optional) |
| **MAGIC BLAST** | Blue | Ranged action, one target. LoF never blocked, no terrain modifiers. If hits, roll 1d6 = damage. (Optional) |
| **FLAME/LIGHTNING** | Orange | Ranged action, damage = 1. On hit, affects target and all figures in base contact with target. One roll vs all. (Optional) |
| **SHOCKWAVE** | Yellow | Ranged action, range halved. Draw LoF to all non-captive figures within range in all directions (LoF not blocked by figures). If 2+ eligible: 1 click each on hit. If 1 eligible: normal damage. (Optional) |
| **VAMPIRISM** | Black | Heal 1 click on self whenever damage is inflicted in close combat. |
| **MAGIC HEALING** | Gray | Ranged action targeting a friendly figure. All modifiers ignored. If hits, roll 1d6 = clicks healed. (Optional) |
| **VENOM** | Red | At the start of your turn, deal 1 click damage to each opposing figure in base contact with your front arc. (Passive) |
| **SNEAK ATTACK** | Blue | Prevents free spin when moving into base contact. When attacking from rear arc: double damage value. (Optional) |
| **SWEEP** | Black | Close combat action. Attack every opposing figure in front arc with one roll. Normal damage against all targets hit. No capture. (Optional) |

### Damage Special Abilities

| Ability | Color | Effect |
|---------|-------|--------|
| **STARTING POSITION** | Green | All dials start here. |
| **BERSERK** | Red | Cannot make ranged attacks. Cannot capture/be captured. |
| **MAGIC ENHANCEMENT** | Blue | Friendly figures in base contact making ranged attacks deal +1 extra damage. (Optional) |
| **BATTLE FURY** | Orange | Cannot capture or be captured. |
| **DEMORALIZED** | Yellow | Can only be given move or pass action. May never voluntarily move into base contact with opposing figure. Does **not count** as a warrior for game-end purposes. |
| **NECROMANCY** | Black | Give move action, don't move. Not in base contact with opposing. Choose any eliminated friendly warrior, set to starting position, roll 1d6 and advance dial that many clicks — if no skulls showing, figure returns to play beside this warrior. **Skeletons and Zombies always return at full strength (no roll).** (Optional) |
| **COMMAND** | Gray | Roll 1d6 at start of your turn. On 6: +1 extra action this turn. Also heals 1 click on each Demoralized friendly in base contact. Cannot be captured. |
| **PIERCE** | Red | Ranged attacks by this warrior ignore Battle Armor, Toughness, and Invulnerability. (Optional) |
| **MAGIC FREEZE** | Blue | Ranged action, damage = 1. On hit, roll 1d6 for target if it has 0–1 tokens. 4–6 = place action token (potentially forcing push). (Optional) |
| **MAGIC CONFUSION** | Black | Ranged action, one target. Hit deals no damage — you control the target's next move action instead. Target can't move into base contact with your friendly figures. (Optional) |

---

## Formations

All formation members must be from the **same faction**. Mage Spawn cannot use formations (unless paired with Shyft).

| Formation | Size | Bonus |
|-----------|------|-------|
| **Movement** | 3–5 warriors, each touching at least one other | One move action moves all; speed limited to slowest member |
| **Ranged Combat** | 3–5 warriors, each touching at least one other | Each extra warrior (beyond primary) +1 to attack roll. Damage unchanged. Single target only. |
| **Close Combat** | 2–3 warriors, all front arcs in contact with same target | Each extra warrior +1 to attack roll. +1 if any member contacts target's rear arc. Damage unchanged. |

Critical miss in formation: only primary attacker takes the self-click.

---

## Terrain

| Type | Movement | Ranged LoF |
|------|----------|-----------|
| **Clear** | No restriction | No effect |
| **Hindering** | Stop when completely entering; speed halved if starting in it | +1 DEF to target |
| **Blocking** | Cannot enter | Blocks LoF entirely |
| **Elevated** | Stop when entering/leaving (like hindering) | Blocks LoF unless firer or target is elevated. Height advantage: +1 DEF if target is elevated and firer is not. |
| **Shallow Water** | Treated as hindering | No effect on ranged |
| **Deep Water** | Treated as blocking | No effect on ranged |

---

## Victory Points

- **Eliminated enemy** = its point value (scored immediately when eliminated)
- **Surviving friendly** = its point value (scored at game end)
- *(Capturing rules excluded)*

DEMORALIZED figures and captives **do not count** as warriors for determining if the game ends (a player with only Demoralized warriors on the field has lost).

NECROMANCY note: if a figure is eliminated and resurrected multiple times, you score its point value each time it is eliminated.

---

## Key Interactions for Scoring

These interactions have outsized impact on combat effectiveness and are not captured by raw stat values alone:

1. **Invulnerability + DMG 2 attacker** = impossible to damage (0 effective damage). Only DMG 3+ or critical hit with DMG 2 can harm an Invulnerable warrior.

2. **Toughness + DMG 1 attacker** = impossible to damage. DMG 2 becomes DMG 1.

3. **PIERCE bypasses both** Toughness and Invulnerability on ranged attacks.

4. **DEMORALIZED** makes a mini combat-useless (move/pass only). A dial that reaches DEMORALIZED quickly is a liability, not an asset.

5. **Multiple ranged targets always deal 1 damage** — high-damage ranged warriors lose their damage advantage when splitting fire.

6. **NECROMANCY + Skeletons/Zombies** = free full-health resurrection every turn it activates. Skeletons and Zombies are categorically more valuable in armies with a Necromancer.

7. **VENOM** is passive damage — deals 1 click at the *start of your turn* to all adjacent enemies. Not subject to attack rolls.

8. **WEAPON MASTER** = 1d6 damage (avg 3.5). Highest average damage in the game, but variance is high.

9. **MAGIC BLAST** = 1d6 damage (avg 3.5) at range, LoF never blocked. Strongest ranged option on average.

10. **Pushing** costs 1 click. Warriors with more live clicks can push more aggressively without dying. Durability directly enables action economy.

11. **Range prevents melee engagement**: a ranged warrior in base contact with an opponent *cannot* fire. High-speed melee warriors hard-counter ranged warriors.

12. **ARC** value determines front arc width. Wider arc = harder to get to the rear for the +1 attack bonus or Sneak Attack double-damage.
