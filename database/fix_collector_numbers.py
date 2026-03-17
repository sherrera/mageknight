import os
import re
from sqlalchemy import create_engine, Column, Integer, String, Float, or_
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from urllib.parse import unquote

# --- Configuration ---
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

# --- SQLAlchemy Setup ---
Base = declarative_base()

class Miniature(Base):
    __tablename__ = 'miniatures'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    set_name = Column(String(255))
    collector_number = Column(Integer)
    image_url = Column(String(255))
    rank = Column(String(50))
    point_cost = Column(Integer)
    frq = Column(Integer)
    arc = Column(Integer)
    range = Column(Integer)
    range_targets = Column(Integer)
    source_url = Column(String(255))
    power_score = Column(Float)
    efficiency_score = Column(Float)
    normalized_power_score = Column(Float)
    normalized_efficiency_score = Column(Float)

engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

def fix_collector_numbers_from_source():
    """
    Finds miniatures where the collector number is 0 or NULL, and attempts to
    extract the correct number from the source_url to update the database.
    """
    session = Session()
    updated_count = 0
    
    try:
        print("Querying for miniatures with a collector number of 0 or NULL...")
        minis_to_fix = session.query(Miniature).filter(
            or_(Miniature.collector_number == 0, Miniature.collector_number == None)
        ).all()
        
        total = len(minis_to_fix)
        if total == 0:
            print("No miniatures found with a collector number of 0 or NULL. Nothing to do.")
            return

        print(f"Found {total} miniatures to potentially update.")

        for i, mini in enumerate(minis_to_fix):
            if not mini.source_url:
                print(f"SKIPPING: '{mini.name}' has no source_url.")
                continue

            # Extract the last part of the URL path, e.g., "135.html"
            try:
                filename = mini.source_url.strip('/').split('/')[-1]
                # Extract the number part, e.g., "135" from "135.html"
                number_str = os.path.splitext(unquote(filename))[0].strip()
            except IndexError:
                print(f"SKIPPING: Could not parse filename from source_url for '{mini.name}': {mini.source_url}")
                continue

            if not number_str.isdigit():
                print(f"SKIPPING: Parsed filename for '{mini.name}' is not a number: '{number_str}'")
                continue
            
            extracted_number = int(number_str)
            original_number = mini.collector_number

            # Check if the number needs updating
            if extracted_number != original_number:
                print(f"UPDATING: '{mini.name}' (Set: {mini.set_name}) collector number from {original_number} to {extracted_number}")
                mini.collector_number = extracted_number
                updated_count += 1
        
        if updated_count > 0:
            print(f"\nCommitting {updated_count} updates to the database...")
            session.commit()
            print("Database update complete.")
        else:
            print("\nNo collector numbers needed to be updated after checking the files.")

    except Exception as e:
        print(f"\nAn error occurred: {e}")
        print("Rolling back any changes from this session.")
        session.rollback()
    finally:
        print(f"\nProcessed {total} entries and updated {updated_count}.")
        print("Closing database session.")
        session.close()

if __name__ == "__main__":
    fix_collector_numbers_from_source()