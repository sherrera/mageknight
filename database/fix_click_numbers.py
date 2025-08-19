import json
import os

def fix_click_numbers(input_file, output_file):
    """Reads a JSON file, fixes click numbers, and writes to a new JSON file."""
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    fixed_miniatures = []
    for mini in data.get('miniatures', []):
        if 'clicks' in mini and isinstance(mini['clicks'], list):
            for i, click in enumerate(mini['clicks']):
                click['click_number'] = i  # Re-assign click_number based on index
        fixed_miniatures.append(mini)

    data['miniatures'] = fixed_miniatures

    print(f"Saving fixed data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    print("Click numbers fixed and saved successfully.")

if __name__ == "__main__":
    input_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis.json')
    output_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_fixed.json')
    fix_click_numbers(input_json_path, output_json_path)
