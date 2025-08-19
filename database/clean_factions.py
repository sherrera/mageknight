import json
import os
import re

CANONICAL_FACTIONS = [
    "Solonavi", "Shyft", "Orc Raiders", "Necropolis Sect", "Mage Spawn",
    "Knights Immortal", "Heroes", "Elemental League", "Draconum",
    "Black Powder Rebels", "Apocalypse", "Atlantis Guild"
]

# Mapping for common variations or partial matches to canonical names
FACTION_MAPPING = {
    "HERO": "Heroes",
    "HEROES": "Heroes",
    "BP REBELS": "Black Powder Rebels",
    "ATLANTIS GUILD": "Atlantis Guild",
    "ELEMENTAL LEAGUE": "Elemental League",
    "KNIGHTS IMMORTAL": "Knights Immortal",
    "MAGE SPAWN": "Mage Spawn",
    "NECROPOLIS SECT": "Necropolis Sect",
    "ORC RAIDERS": "Orc Raiders",
    "SHYFT": "Shyft",
    "SOLONAVI": "Solonavi",
    "DRACONUM": "Draconum",
    "APOCALYPSE": "Apocalypse",
}

def clean_and_canonicalize_factions(input_file, output_file):
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    cleaned_count = 0
    updated_miniatures = []

    for mini in data.get('miniatures', []):
        original_faction_string = mini.get('faction', '')
        processed_factions = set() # Use a set to avoid duplicates

        # Step 1: Remove UNIT COST and related info
        temp_faction_string = re.sub(r'UNIT COST.*$', '', original_faction_string, flags=re.IGNORECASE).strip()

        # Step 2: Split by common delimiters
        parts = re.split(r'[/,&]|\s+and\s+', temp_faction_string, flags=re.IGNORECASE)

        for part in parts:
            part = part.strip().upper() # Clean and uppercase for matching
            if not part: continue

            # Step 3: Try to map to canonical names
            mapped_faction = FACTION_MAPPING.get(part, None)
            if mapped_faction:
                processed_factions.add(mapped_faction)
            else:
                # Fallback: Check if any canonical faction is a substring (less precise but catches some)
                for canonical_name in CANONICAL_FACTIONS:
                    if canonical_name.upper() in part:
                        processed_factions.add(canonical_name)
                        break
        
        # If no factions were found, or if the original was empty/unparsable, assign a default or handle as unknown
        if not processed_factions:
            # This is a decision point: what to do with truly unidentifiable factions?
            # For now, we'll add the original string if it's not empty, or 'Unknown'
            if original_faction_string.strip():
                processed_factions.add(original_faction_string.strip())
            else:
                processed_factions.add("Unknown")

        # Convert set to sorted list for consistent output
        mini['factions'] = sorted(list(processed_factions))
        # Remove the old 'faction' field if it's no longer needed, or keep it for reference
        # del mini['faction'] # Uncomment if you want to remove the old field

        updated_miniatures.append(mini)
        if original_faction_string != mini['factions']:
            cleaned_count += 1

    data['miniatures'] = updated_miniatures

    print(f"\nFaction cleaning complete. {cleaned_count} miniatures had their factions updated.")
    print(f"Saving cleaned data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    print("Cleaned faction data saved successfully.")


if __name__ == "__main__":
    base_dir = os.path.dirname(__file__)
    input_json_path = os.path.join(base_dir, '..', 'minis_repaired.json')
    output_json_path = os.path.join(base_dir, '..', 'minis_factions_cleaned.json')
    
    clean_and_canonicalize_factions(input_json_path, output_json_path)
