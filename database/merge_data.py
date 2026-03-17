import json
import os

def merge_data(file1_path, file2_path, output_file):
    """Merges two JSON data files, prioritizing data from the second file for duplicates."""
    print(f"Reading data from {file1_path}...")
    try:
        with open(file1_path, 'r') as f:
            file1_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Data file not found at {file1_path}")
        return

    print(f"Reading data from {file2_path}...")
    try:
        with open(file2_path, 'r') as f:
            file2_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Data file not found at {file2_path}")
        return

    # Create a dictionary for quick lookup of miniatures in file1_data
    # Key will be a tuple (set_name, collector_number)
    miniatures_map = {}
    for mini in file1_data.get('miniatures', []):
        key = (mini.get('set_name'), mini.get('collector_number'))
        miniatures_map[key] = mini

    # Merge data from file2
    for mini_from_file2 in file2_data.get('miniatures', []):
        key = (mini_from_file2.get('set_name'), mini_from_file2.get('collector_number'))
        miniatures_map[key] = mini_from_file2 # This will overwrite duplicates

    # Convert map back to list
    merged_miniatures = list(miniatures_map.values())

    # Merge unique abilities (union of both sets)
    abilities_set1 = set((a['name'], a['color']) for a in file1_data.get('unique_abilities', []))
    abilities_set2 = set((a['name'], a['color']) for a in file2_data.get('unique_abilities', []))
    merged_abilities = sorted([{"name": name, "color": color} for name, color in (abilities_set1 | abilities_set2)], key=lambda x: x['name'])

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
