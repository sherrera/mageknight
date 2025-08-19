import json
import os

def merge_data(main_file, rebellion_file, output_file):
    """Merges rebellion data into main data, prioritizing rebellion data for duplicates."""
    print(f"Reading main data from {main_file}...")
    try:
        with open(main_file, 'r') as f:
            main_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Main data file not found at {main_file}")
        return

    print(f"Reading rebellion data from {rebellion_file}...")
    try:
        with open(rebellion_file, 'r') as f:
            rebellion_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Rebellion data file not found at {rebellion_file}")
        return

    # Create a dictionary for quick lookup of miniatures in main_data
    # Key will be a tuple (set_name, collector_number)
    main_miniatures_map = {}
    for mini in main_data.get('miniatures', []):
        key = (mini.get('set_name'), mini.get('collector_number'))
        main_miniatures_map[key] = mini

    # Merge rebellion data
    for rebellion_mini in rebellion_data.get('miniatures', []):
        key = (rebellion_mini.get('set_name'), rebellion_mini.get('collector_number'))
        main_miniatures_map[key] = rebellion_mini # This will overwrite duplicates

    # Convert map back to list
    merged_miniatures = list(main_miniatures_map.values())

    # Merge unique abilities (union of both sets)
    main_abilities_set = set((a['name'], a['color']) for a in main_data.get('unique_abilities', []))
    rebellion_abilities_set = set((a['name'], a['color']) for a in rebellion_data.get('unique_abilities', []))
    merged_abilities = sorted([{"name": name, "color": color} for name, color in (main_abilities_set | rebellion_abilities_set)], key=lambda x: x['name'])

    final_merged_data = {
        "unique_abilities": merged_abilities,
        "miniatures": merged_miniatures
    }

    print(f"Saving merged data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(final_merged_data, f, indent=2)
    print("Data merged successfully.")

if __name__ == "__main__":
    main_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_fixed.json')
    rebellion_json_path = os.path.join(os.path.dirname(__file__), '..', 'rebellion_minis_fixed.json')
    output_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_merged.json')
    merge_data(main_json_path, rebellion_json_path, output_json_path)
