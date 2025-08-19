import os
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float, Table
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

# Database connection details
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

Base = declarative_base()

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

# Define the new collection table
class CollectionItem(Base):
    __tablename__ = 'collection_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    quantity = Column(Integer, nullable=False, default=1)

    miniature = relationship('Miniature')

def add_collection_table():
    """Adds the collection_items table to the database.""" 
    engine = create_engine(DATABASE_URL)
    Base.metadata.create_all(engine)
    print("Successfully added the 'collection_items' table to the database.")

if __name__ == "__main__":
    add_collection_table()