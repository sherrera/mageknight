import json
import os
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

# Database connection details
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

Base = declarative_base()

# Define Database Models
class Ability(Base):
    __tablename__ = 'abilities'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), unique=True, nullable=False)
    color = Column(String(7))

    def __repr__(self):
        return f"<Ability(name='{self.name}', color='{self.color}')>"

from sqlalchemy import Table, Column, Integer, String, ForeignKey, Float
from sqlalchemy.orm import relationship

# Association table for many-to-many relationship between miniatures and factions
miniature_factions_association = Table(
    'miniature_factions',
    Base.metadata,
    Column('miniature_id', Integer, ForeignKey('miniatures.id'), primary_key=True),
    Column('faction_id', Integer, ForeignKey('factions.id'), primary_key=True)
)

class Faction(Base):
    __tablename__ = 'factions'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), unique=True, nullable=False)

    def __repr__(self):
        return f"<Faction(name='{self.name}')>"

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

    clicks = relationship('ClickStat', back_populates='miniature', order_by='ClickStat.click_number')
    factions = relationship('Faction', secondary=miniature_factions_association, backref='miniatures')

    def __repr__(self):
        return f"<Miniature(name='{self.name}', set='{self.set_name}')>"

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

    speed_ability = relationship('Ability', foreign_keys=[speed_ability_id])
    attack_ability = relationship('Ability', foreign_keys=[attack_ability_id])
    defense_ability = relationship('Ability', foreign_keys=[defense_ability_id])
    damage_ability = relationship('Ability', foreign_keys=[damage_ability_id])

    miniature = relationship('Miniature', back_populates='clicks')

    def __repr__(self):
        return f"<ClickStat(miniature_id={self.miniature_id}, click_number={self.click_number})>"

def load_data_to_db(json_file):
    """Loads data from a JSON file into the PostgreSQL database."""
    engine = create_engine(DATABASE_URL)
    Base.metadata.drop_all(engine) # Drop all existing tables
    Base.metadata.create_all(engine) # Create tables if they don't exist

    Session = sessionmaker(bind=engine)
    session = Session()

    try:
        with open(json_file, 'r') as f:
            data = json.load(f)

        # Step 1: Populate Abilities table
        session.query(Ability).delete()
        session.commit()

        ability_map = {}
        for ability_data in data.get('unique_abilities', []):
            ability = Ability(name=ability_data['name'], color=ability_data['color'])
            session.add(ability)
            session.flush() # Flush to get the ID
            ability_map[ability.name] = ability.id
        session.commit()
        print(f"Loaded {len(ability_map)} unique abilities.")

        # Step 2: Populate Factions table
        session.query(Faction).delete()
        session.commit()

        faction_map = {}
        # Collect all unique faction names first
        all_faction_names = set()
        for mini_data in data.get('miniatures', []):
            for faction_name in mini_data.get('factions', []):
                all_faction_names.add(faction_name)
        
        for faction_name in sorted(list(all_faction_names)): # Sort for consistent ID assignment
            faction = Faction(name=faction_name)
            session.add(faction)
            session.flush() # Flush to get the ID
            faction_map[faction.name] = faction.id
        session.commit()
        print(f"Loaded {len(faction_map)} unique factions.")

        # Step 3: Populate Miniatures and ClickStats tables
        for mini_data in data.get('miniatures', []):
            miniature = Miniature(
                name=mini_data.get('name'),
                set_name=mini_data.get('set_name'),
                rank=mini_data.get('rank'),
                point_cost=mini_data.get('point_cost'),
                collector_number=mini_data.get('collector_number'),
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
            session.add(miniature)
            session.flush() # Flush to get miniature.id

            # Link miniature to its factions
            for faction_name in mini_data.get('factions', []):
                faction_id = faction_map.get(faction_name)
                if faction_id:
                    # Create a dummy Faction object with just the ID to link
                    miniature.factions.append(session.query(Faction).get(faction_id))

            for click_data in mini_data.get('clicks', []):
                click_stat = ClickStat(
                    miniature_id=miniature.id,
                    click_number=click_data.get('click_number'),
                    speed=click_data.get('speed'),
                    attack=click_data.get('attack'),
                    defense=click_data.get('defense'),
                    damage=click_data.get('damage'),
                    speed_ability_id=ability_map.get(click_data.get('speed_ability')),
                    attack_ability_id=ability_map.get(click_data.get('attack_ability')),
                    defense_ability_id=ability_map.get(click_data.get('defense_ability')),
                    damage_ability_id=ability_map.get(click_data.get('damage_ability'))
                )
                session.add(click_stat)
        session.commit()
        print(f"Loaded {len(data.get('miniatures', []))} miniatures and their click stats.")

    except FileNotFoundError:
        print(f"Error: JSON file not found at {json_file}")
        session.rollback()
    except Exception as e:
        print(f"An error occurred: {e}")
        session.rollback()
    finally:
        session.close()

def verify_abilities_in_db():
    """Queries the abilities table and prints its contents."""
    engine = create_engine(DATABASE_URL)
    Session = sessionmaker(bind=engine)
    session = Session()
    try:
        print("\n--- Abilities in Database ---")
        abilities = session.query(Ability).order_by(Ability.name).all()
        for ab in abilities:
            print(f"Name: {ab.name}, Color: {ab.color}")
        print("-----------------------------")
    except Exception as e:
        print(f"Error verifying abilities in DB: {e}")
    finally:
        session.close()

if __name__ == "__main__":
    valued_json_path = os.path.join(os.path.dirname(__file__), '..', 'minis_valued.json')
    load_data_to_db(valued_json_path)
    verify_abilities_in_db()

