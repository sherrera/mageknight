import json
import os
import re

def repair_zero_cost_minis(input_file, output_file):
    """
    Reads miniature data, fixes entries with a point_cost of 0 by parsing the
    faction string, recalculates efficiency, and saves to a new file.
    """
    print(f"Reading data from {input_file}...")
    try:
        with open(input_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input file not found at {input_file}")
        return

    repaired_count = 0
    updated_miniatures = []

    for mini in data.get('miniatures', []):
        # Check for the specific data issue: zero cost and a parsable faction string
        if mini.get('point_cost') == 0 and 'UNIT COST LEVEL 5' in mini.get('faction', ''):
            faction_string = mini['faction']
            
            # Extract the Level 5 cost
            cost_match = re.search(r'UNIT COST LEVEL 5: (\d+)', faction_string)
            if cost_match:
                new_cost = int(cost_match.group(1))
                
                # Update the miniature's data
                mini['point_cost'] = new_cost
                
                # Recalculate efficiency score
                power_score = mini.get('power_score', 0)
                if new_cost > 0:
                    mini['efficiency_score'] = round(power_score / new_cost, 2)
                else:
                    mini['efficiency_score'] = 0
                
                repaired_count += 1
                print(f"Repaired {mini['name']}: New Cost={new_cost}, Original Faction='{mini['faction']}'")

        updated_miniatures.append(mini)

    # Replace the old miniatures list with the updated one
    data['miniatures'] = updated_miniatures

    # --- Normalization to 0-100 Scale ---
    min_power = float('inf')
    max_power = float('-inf')
    min_efficiency = float('inf')
    max_efficiency = float('-inf')

    # Find min/max values
    for mini in data.get('miniatures', []):
        power = mini.get('power_score', 0)
        efficiency = mini.get('efficiency_score', 0)

        if power < min_power: min_power = power
        if power > max_power: max_power = power
        if efficiency < min_efficiency: min_efficiency = efficiency
        if efficiency > max_efficiency: max_efficiency = efficiency

    # Apply normalization
    for mini in data.get('miniatures', []):
        power = mini.get('power_score', 0)
        efficiency = mini.get('efficiency_score', 0)

        normalized_power = 0.0
        if (max_power - min_power) != 0:
            normalized_power = ((power - min_power) / (max_power - min_power)) * 100
        mini['normalized_power_score'] = round(normalized_power, 2)

        normalized_efficiency = 0.0
        if (max_efficiency - min_efficiency) != 0:
            normalized_efficiency = ((efficiency - min_efficiency) / (max_efficiency - min_efficiency)) * 100
        mini['normalized_efficiency_score'] = round(normalized_efficiency, 2)

    print(f"\nRepair complete. {repaired_count} miniatures were updated.")
    print(f"Saving repaired data to {output_file}...")
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    print("Repaired data saved successfully.")


if __name__ == "__main__":
    base_dir = os.path.dirname(__file__)
    input_json_path = os.path.join(base_dir, '..', 'minis_valued.json')
    output_json_path = os.path.join(base_dir, '..', 'minis_repaired.json')
    
    repair_zero_cost_minis(input_json_path, output_json_path)
