import json
import os

def clean_abilities(input_file, output_file):
    """Reads JSON, cleans ability names, and writes to a new JSON file."""
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    # Define explicit mapping for ability names
    # Key: variation, Value: canonical name
    ability_mapping = {
        "MAGICENHANCEMENT": "MAGIC ENHANCEMENT",
        "MAGICENHANCEMNT": "MAGIC ENHANCEMENT",
        "MAG ENHANC": "MAGIC ENHANCEMENT",
        "MAGICENHNCEMENT": "MAGIC ENHANCEMENT",
        "BATTLEARMOR": "BATTLE ARMOR",
        "BATTLEFURY": "BATTLE FURY",
        "FORCEMARCH": "FORCE MARCH",
        "LIMITEDINVISIBILITY": "LIMITED INVISIBILITY",
        "MAGICBLAST": "MAGIC BLAST",
        "MAGICCONFUSION": "MAGIC CONFUSION",
        "MAGICFREEZE": "MAGIC FREEZE",
        "MAGICHEALING": "MAGIC HEALING",
        "MAGICIMMUNITY": "MAGIC IMMUNITY",
        "MAGICLEVITATION": "MAGIC LEVITATION",
        "MAGICRETALIATION": "MAGIC RETALIATION",
        "WEAPONMASTER": "WEAPON MASTER",
        "NECROMANCY6": "NECROMANCY",
        "POLE ARM": "POLEARM", # Common variation
        "SNEAK ATTACK": "SNEAK ATTACK", # Ensure consistent spacing
        "SNEAKATTACK": "SNEAK ATTACK",
    }

    # Create a canonical ability map to store unique abilities with their chosen color
    # Key: canonical name, Value: color
    canonical_abilities = {}

    # First pass: Populate canonical_abilities from existing unique_abilities
    # This ensures we capture existing colors for canonical names
    for ab in data.get('unique_abilities', []):
        name = ab['name']
        color = ab['color']
        canonical_name = ability_mapping.get(name, name) # Get canonical name
        
        # Prioritize color of the first encountered canonical name
        if canonical_name not in canonical_abilities:
            canonical_abilities[canonical_name] = color

    # Process miniatures to update ability names and collect all abilities (including new ones)
    processed_miniatures = []
    for mini in data.get('miniatures', []):
        if 'clicks' in mini and isinstance(mini['clicks'], list):
            for click in mini['clicks']:
                for attr_type in ["speed", "attack", "defense", "damage"]:
                    ability_key = f"{attr_type}_ability"
                    color_key = f"{attr_type}_ability_color"
                    
                    current_ability_name = click.get(ability_key)
                    if current_ability_name:
                        canonical_ability_name = ability_mapping.get(current_ability_name, current_ability_name)
                        click[ability_key] = canonical_ability_name
                        
                        # Ensure canonical_abilities has this ability and its color
                        if canonical_ability_name not in canonical_abilities:
                            canonical_abilities[canonical_ability_name] = click.get(color_key, '#FFFFFF')
                        
                        # Ensure the color in the click matches the canonical color
                        click[color_key] = canonical_abilities[canonical_ability_name]

        processed_miniatures.append(mini)

    # Rebuild the unique_abilities list from the canonical_abilities map
    final_unique_abilities = sorted([{"name": name, "color": color} for name, color in canonical_abilities.items()], key=lambda x: x['name'])

    final_data = {
        "unique_abilities": final_unique_abilities,
        "miniatures": processed_miniatures
    }

    print(f"Saving cleaned data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(final_data, f, indent=2)
    print("Abilities cleaned and data saved successfully.")

if __name__ == "__main__":
    input_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_final.json')
    output_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_cleaned.json')
    clean_abilities(input_json_path, output_json_path)
