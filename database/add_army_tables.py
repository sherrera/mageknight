
import os
from sqlalchemy import create_engine, Column, Integer, String, Text, DateTime, ForeignKey, Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.sql import func

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

class Army(Base):
    __tablename__ = 'armies'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), nullable=False)
    description = Column(Text)
    created_at = Column(DateTime(timezone=True), server_default=func.now())

class ArmyMiniature(Base):
    __tablename__ = 'army_miniatures'
    id = Column(Integer, primary_key=True)
    army_id = Column(Integer, ForeignKey('armies.id'), nullable=False)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    quantity = Column(Integer, nullable=False, default=1)

def add_army_tables():
    """Adds the armies and army_miniatures tables to the database."""
    engine = create_engine(DATABASE_URL)
    Base.metadata.create_all(engine)
    print("Successfully added the 'armies' and 'army_miniatures' tables to the database.")

if __name__ == "__main__":
    add_army_tables()
