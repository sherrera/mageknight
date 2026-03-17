
import json
import os
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

# --- Database Setup ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"
Base = declarative_base()
engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

# --- ORM Models ---

class Ability(Base):
    __tablename__ = 'abilities'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), unique=True, nullable=False)
    color = Column(String(7))

class Faction(Base):
    __tablename__ = 'factions'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), unique=True, nullable=False)

miniature_factions_association = Table(
    'miniature_factions',
    Base.metadata,
    Column('miniature_id', Integer, ForeignKey('miniatures.id'), primary_key=True),
    Column('faction_id', Integer, ForeignKey('factions.id'), primary_key=True)
)

class Miniature(Base):
    __tablename__ = 'miniatures'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    set_name = Column(String(255))
    rank = Column(String(50))
    point_cost = Column(Integer)
    collector_number = Column(Integer)
    frq = Column(Integer)
    arc = Column(Integer)
    range = Column(Integer)
    range_targets = Column(Integer)
    image_url = Column(String(255))
    source_url = Column(String(255))
    power_score = Column(Float)
    efficiency_score = Column(Float)
    normalized_power_score = Column(Float)
    normalized_efficiency_score = Column(Float)
    factions = relationship('Faction', secondary='miniature_factions', backref='miniatures')

class ClickStat(Base):
    __tablename__ = 'click_stats'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'))
    click_number = Column(Integer)
    speed = Column(Integer)
    attack = Column(Integer)
    defense = Column(Integer)
    damage = Column(Integer)
    speed_ability_id = Column(Integer, ForeignKey('abilities.id'))
    attack_ability_id = Column(Integer, ForeignKey('abilities.id'))
    defense_ability_id = Column(Integer, ForeignKey('abilities.id'))
    damage_ability_id = Column(Integer, ForeignKey('abilities.id'))

def import_new_minis(json_file):
    """
    Imports new miniatures from a JSON file into the database, skipping duplicates.
    """
    session = Session()
    
    try:
        with open(json_file, 'r') as f:
            data = json.load(f)

        # --- Get existing abilities and factions from DB for quick lookup ---
        existing_abilities = {ab.name: ab.id for ab in session.query(Ability).all()}
        existing_factions = {fac.name: fac.id for fac in session.query(Faction).all()}

        new_minis_count = 0
        updated_minis_count = 0
        skipped_minis_count = 0

        for mini_data in data.get('miniatures', []):
            set_name = mini_data.get('set_name')
            collector_number = mini_data.get('collector_number')

            # 1. Check if miniature already exists
            existing_mini = session.query(Miniature).filter_by(
                set_name=set_name,
                collector_number=collector_number
            ).first()

            if existing_mini:
                # Miniature exists, so update its scores
                print(f"UPDATE: Miniature '{mini_data.get('name')}' (#{collector_number}) from set '{set_name}'.")
                existing_mini.power_score = mini_data.get('power_score')
                existing_mini.efficiency_score = mini_data.get('efficiency_score')
                existing_mini.normalized_power_score = mini_data.get('normalized_power_score')
                existing_mini.normalized_efficiency_score = mini_data.get('normalized_efficiency_score')
                updated_minis_count += 1
                continue

            # 2. If it's a new miniature, add it
            print(f"ADD: Miniature '{mini_data.get('name')}' (#{collector_number}) from set '{set_name}'.")
            
            # --- Add new abilities and factions if they don't exist ---
            for ab_data in data.get('unique_abilities', []):
                if ab_data['name'] not in existing_abilities:
                    new_ability = Ability(name=ab_data['name'], color=ab_data['color'])
                    session.add(new_ability)
                    session.flush()
                    existing_abilities[new_ability.name] = new_ability.id
                    print(f"  - Added new ability: {new_ability.name}")

            for faction_name in mini_data.get('factions', []):
                if faction_name not in existing_factions:
                    new_faction = Faction(name=faction_name)
                    session.add(new_faction)
                    session.flush()
                    existing_factions[new_faction.name] = new_faction.id
                    print(f"  - Added new faction: {new_faction.name}")

            # 3. Create and insert the new miniature
            new_mini = Miniature(
                name=mini_data.get('name'),
                set_name=set_name,
                rank=mini_data.get('rank'),
                point_cost=mini_data.get('point_cost'),
                collector_number=collector_number,
                frq=mini_data.get('frq'),
                arc=mini_data.get('arc'),
                range=mini_data.get('range'),
                range_targets=mini_data.get('range_targets'),
                image_url=mini_data.get('image_url'),
                source_url=mini_data.get('source_url'),
                power_score=mini_data.get('power_score'),
                efficiency_score=mini_data.get('efficiency_score'),
                normalized_power_score=mini_data.get('normalized_power_score'),
                normalized_efficiency_score=mini_data.get('normalized_efficiency_score')
            )
            
            # Link factions to the new miniature
            for faction_name in mini_data.get('factions', []):
                faction_id = existing_factions.get(faction_name)
                if faction_id:
                    faction_to_link = session.query(Faction).get(faction_id)
                    new_mini.factions.append(faction_to_link)

            session.add(new_mini)
            session.flush() # Flush to get the new miniature's ID

            # 4. Insert the click stats for the new miniature
            for click_data in mini_data.get('clicks', []):
                click_stat = ClickStat(
                    miniature_id=new_mini.id,
                    click_number=click_data.get('click_number'),
                    speed=click_data.get('speed'),
                    attack=click_data.get('attack'),
                    defense=click_data.get('defense'),
                    damage=click_data.get('damage'),
                    speed_ability_id=existing_abilities.get(click_data.get('speed_ability')),
                    attack_ability_id=existing_abilities.get(click_data.get('attack_ability')),
                    defense_ability_id=existing_abilities.get(click_data.get('defense_ability')),
                    damage_ability_id=existing_abilities.get(click_data.get('damage_ability'))
                )
                session.add(click_stat)
            
            new_minis_count += 1

        session.commit()
        print(f"\nImport complete.")
        print(f"Added: {new_minis_count} new miniatures.")
        print(f"Updated: {updated_minis_count} existing miniatures.")
        print(f"Skipped: {skipped_minis_count} miniatures (should be 0).")

    except FileNotFoundError:
        print(f"Error: JSON file not found at {json_file}")
        session.rollback()
    except Exception as e:
        print(f"An error occurred: {e}")
        session.rollback()
    finally:
        session.close()

if __name__ == "__main__":
    valued_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_valued.json')
    import_new_minis(valued_json_path)
