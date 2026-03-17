import json
import os

# --- Configuration ---

# Non-linear value maps for stats
STAT_VALUE_MAPS = {
    "speed": {
        0: 0, 1: 5, 2: 10, 3: 15, 4: 20, 5: 25, 6: 30, 7: 35, 8: 40, 9: 45,
        10: 50, 11: 55, 12: 60, 13: 65, 14: 70, 15: 75, 16: 80, 17: 85, 18: 90
    },
    "attack": {
        0: 0, 1: 5, 2: 10, 3: 15, 4: 20, 5: 25, 6: 30, 7: 45, 8: 65, 9: 90,
        10: 110, 11: 130, 12: 145, 13: 155, 14: 165, 15: 170, 16: 175, 17: 180, 18: 185
    },
    "defense": {
        0: 0, 1: 5, 2: 10, 3: 15, 4: 20, 5: 25, 6: 30, 7: 45, 8: 65, 9: 90,
        10: 110, 11: 130, 12: 145, 13: 155, 14: 165, 15: 175, 16: 185, 17: 195, 18: 205
    },
    "damage": {
        0: 0, 1: 15, 2: 40, 3: 90, 4: 125, 5: 150, 6: 170, 7: 185, 8: 200
    }
}

ABILITY_VALUES = {
    # Group 1: Movement & Action Economy
    "QUICKNESS": 25,
    "CHARGE": 20,
    "BOUND": 20,
    "FLIGHT": 15,
    "FORCE MARCH": 8,
    "NIMBLE": 5,
    "AQUATIC": 3,

    # Group 2: Offensive
    "MAGIC BLAST": 22,
    "SNEAK ATTACK": 16,
    "PIERCE": 15,
    "POLE ARM": 15,
    "VENOM": 14,
    "SWEEP": 14,
    "WEAPON MASTER": 12,
    "MAGIC ENHANCEMENT": 12,
    "FLAME/LIGHTNING": 18,
    "RAM": 9,
    "SHOCKWAVE": 8,

    # Group 3: Defensive
    "INVULNERABILITY": 30,
    "DODGE": 20,
    "TOUGHNESS": 18,
    "MAGIC IMMUNITY": 16,
    "LIMITED INVISIBILITY": 16,
    "BATTLE ARMOR": 16,
    "STEALTH": 12,

    # Group 4: Support & Healing
    "NECROMANCY": 25,
    "REGENERATION": 20,
    "MAGIC HEALING": 18,
    "HEALING": 16,
    "COMMAND": 15,
    "VAMPIRISM": 14,
    "DEFEND": 14,

    # Group 5: Control & Disruption
    "MAGIC CONFUSION": 18,
    "MAGIC FREEZE": 17,
    "MAGIC RETALIATION": 12,

    # Group 6: Negative & Restrictive
    "DEMORALIZED": -20,
    "BERSERK": -10,
    "BATTLE FURY": -5,
    
    # Neutral
    "DEAD": 0
}

# --- Helper Function ---

def get_stat_value(stat_name, stat_number):
    """Safely gets a value from the STAT_VALUE_MAPS, handling missing keys."""
    value_map = STAT_VALUE_MAPS.get(stat_name, {})
    return value_map.get(stat_number, 0)

# --- Main Logic ---

def calculate_scores(input_file, output_file):
    """
    Reads cleaned miniature data, calculates power and efficiency scores,
    and writes the results to a new file.
    """
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    updated_miniatures = []

    for mini in data.get('miniatures', []):
        click_power_scores = []
        
        # Filter out "DEAD" clicks before calculation
        active_clicks = [c for c in mini['clicks'] if c.get('speed_ability') != 'DEAD' and c.get('attack_ability') != 'DEAD' and c.get('defense_ability') != 'DEAD' and c.get('damage_ability') != 'DEAD']

        if not active_clicks:
            mini['power_score'] = 0
            mini['efficiency_score'] = 0
            updated_miniatures.append(mini)
            continue

        for click in active_clicks:
            # 1. Calculate base stat score using the new value maps
            stat_score = (
                get_stat_value('speed', click.get('speed', 0)) +
                get_stat_value('attack', click.get('attack', 0)) +
                get_stat_value('defense', click.get('defense', 0)) +
                get_stat_value('damage', click.get('damage', 0))
            )

            # 2. Calculate ability score
            ability_score = 0
            abilities_on_click = {
                click.get('speed_ability'),
                click.get('attack_ability'),
                click.get('defense_ability'),
                click.get('damage_ability')
            }
            
            for ability in abilities_on_click:
                if ability and ability in ABILITY_VALUES:
                    ability_score += ABILITY_VALUES[ability]

            # 3. Calculate total score for this click
            click_power_scores.append(stat_score + ability_score)

        # 4. Calculate average power score across all active clicks
        total_power_score = 0
        if click_power_scores:
            total_power_score = sum(click_power_scores) / len(click_power_scores)
        
        # 5. Calculate the new, balanced efficiency score
        point_cost = mini.get('point_cost', 0)
        efficiency_score = 0
        if point_cost > 0:
            # Add a balancing factor to the denominator
            efficiency_score = total_power_score / (point_cost + 15)

        # 6. Add new scores to the miniature object
        mini['power_score'] = round(total_power_score, 2)
        mini['efficiency_score'] = round(efficiency_score, 2)
        
        updated_miniatures.append(mini)

    # --- Second Pass: Normalization ---
    power_scores = [m['power_score'] for m in updated_miniatures if m.get('power_score') is not None]
    efficiency_scores = [m['efficiency_score'] for m in updated_miniatures if m.get('efficiency_score') is not None]

    min_power = min(power_scores) if power_scores else 0
    max_power = max(power_scores) if power_scores else 0
    min_efficiency = min(efficiency_scores) if efficiency_scores else 0
    max_efficiency = max(efficiency_scores) if efficiency_scores else 0

    for mini in updated_miniatures:
        power_score = mini.get('power_score')
        if power_score is not None:
            if max_power > min_power:
                normalized_power = 1 + 99 * (power_score - min_power) / (max_power - min_power)
            else:
                normalized_power = 50  # Default to 50 if all values are the same
            mini['normalized_power_score'] = round(normalized_power, 2)
        else:
            mini['normalized_power_score'] = None

        efficiency_score = mini.get('efficiency_score')
        if efficiency_score is not None:
            if max_efficiency > min_efficiency:
                normalized_efficiency = 1 + 99 * (efficiency_score - min_efficiency) / (max_efficiency - min_efficiency)
            else:
                normalized_efficiency = 50 # Default to 50 if all values are the same
            mini['normalized_efficiency_score'] = round(normalized_efficiency, 2)
        else:
            mini['normalized_efficiency_score'] = None

    # Replace the old miniatures list with the updated one
    data['miniatures'] = updated_miniatures

    print(f"Saving valued data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    print("Value calculation complete and data saved successfully.")


if __name__ == "__main__":
    # Define file paths relative to the script location
    base_dir = os.path.dirname(__file__)
    input_json_path = os.path.join(base_dir, '..', 'minis_cleaned.json')
    output_json_path = os.path.join(base_dir, '..', 'minis_valued.json')
    
    calculate_scores(input_json_path, output_json_path)
