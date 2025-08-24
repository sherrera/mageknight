from flask import Flask, render_template, request, jsonify
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Float, Table
from sqlalchemy.orm import sessionmaker, relationship, joinedload
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime

app = Flask(__name__)

# Database connection details
DATABASE_URL = "postgresql://mageknight_user:test@localhost:5432/mageknight_db"

engine = create_engine(DATABASE_URL)
Base = declarative_base()

# --- Define Database Models ---

class Ability(Base):
    __tablename__ = 'abilities'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), unique=True, nullable=False)
    color = Column(String(7))

    def __repr__(self):
        return f"<Ability(name='{self.name}', color='{self.color}')>"

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

class ShoppingListItem(Base):
    __tablename__ = 'shopping_list_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    store_link = Column(String(1024), nullable=True)
    price = Column(Float, nullable=True)
    quantity = Column(Integer, nullable=False, default=1)
    added_at = Column(String, default=lambda: datetime.utcnow().isoformat())

    miniature = relationship('Miniature')

from sqlalchemy.sql import func

class CollectionItem(Base):
    __tablename__ = 'collection_items'
    id = Column(Integer, primary_key=True)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False, unique=True)
    quantity = Column(Integer, nullable=False, default=1)

    miniature = relationship('Miniature')

class Army(Base):
    __tablename__ = 'armies'
    id = Column(Integer, primary_key=True)
    name = Column(String(255), nullable=False)
    description = Column(String(1024))
    created_at = Column(String, default=lambda: datetime.utcnow().isoformat())

    miniatures = relationship('ArmyMiniature', back_populates='army')

class ArmyMiniature(Base):
    __tablename__ = 'army_miniatures'
    id = Column(Integer, primary_key=True)
    army_id = Column(Integer, ForeignKey('armies.id'), nullable=False)
    miniature_id = Column(Integer, ForeignKey('miniatures.id'), nullable=False)
    quantity = Column(Integer, nullable=False, default=1)

    army = relationship('Army', back_populates='miniatures')
    miniature = relationship('Miniature')


# --- End of Models ---

Session = sessionmaker(bind=engine)

# --- Page Routes ---

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/shopping-list')
def shopping_list_page():
    return render_template('shopping_list.html')

@app.route('/collection')
def collection_page():
    return render_template('collection.html')

@app.route('/armies')
def armies_page():
    return render_template('armies.html')

@app.route('/armies/<int:army_id>')
def army_builder_page(army_id):
    return render_template('army_builder.html', army_id=army_id)

# --- API Endpoints ---

@app.route('/api/minis')
def get_minis():
    session = Session()
    minis_query = session.query(Miniature).options(
        joinedload(Miniature.clicks).joinedload(ClickStat.speed_ability),
        joinedload(Miniature.clicks).joinedload(ClickStat.attack_ability),
        joinedload(Miniature.clicks).joinedload(ClickStat.defense_ability),
        joinedload(Miniature.clicks).joinedload(ClickStat.damage_ability),
        joinedload(Miniature.factions)
    )

    # Filtering
    name = request.args.get('name')
    factions_filter = request.args.getlist('faction')
    rank = request.args.getlist('rank')
    min_cost = request.args.get('min_cost', type=int)
    max_cost = request.args.get('max_cost', type=int)
    ability_filter = request.args.get('ability')
    min_speed = request.args.get('min_speed', type=int)
    min_attack = request.args.get('min_attack', type=int)
    min_defense = request.args.get('min_defense', type=int)
    min_damage = request.args.get('min_damage', type=int)
    min_range = request.args.get('min_range', type=int)
    collection = request.args.get('collection', type=bool)

    if name:
        minis_query = minis_query.filter(Miniature.name.ilike(f'%{name}%'))
    if factions_filter:
        for f_name in factions_filter:
            minis_query = minis_query.filter(Miniature.factions.any(Faction.name == f_name))
    if rank:
        minis_query = minis_query.filter(Miniature.rank.in_(rank))
    if min_cost is not None:
        minis_query = minis_query.filter(Miniature.point_cost >= min_cost)
    if max_cost is not None:
        minis_query = minis_query.filter(Miniature.point_cost <= max_cost)
    if ability_filter:
        minis_query = minis_query.filter(
            Miniature.clicks.any(
                (ClickStat.speed_ability.has(name=ability_filter)) |
                (ClickStat.attack_ability.has(name=ability_filter)) |
                (ClickStat.defense_ability.has(name=ability_filter)) |
                (ClickStat.damage_ability.has(name=ability_filter))
            )
        )
    if min_speed is not None:
        minis_query = minis_query.filter(Miniature.clicks.any(ClickStat.speed >= min_speed))
    if min_attack is not None:
        minis_query = minis_query.filter(Miniature.clicks.any(ClickStat.attack >= min_attack))
    if min_defense is not None:
        minis_query = minis_query.filter(Miniature.clicks.any(ClickStat.defense >= min_defense))
    if min_damage is not None:
        minis_query = minis_query.filter(Miniature.clicks.any(ClickStat.damage >= min_damage))
    if min_range is not None:
        minis_query = minis_query.filter(Miniature.range >= min_range)
    if collection:
        minis_query = minis_query.join(CollectionItem)

    # Sorting
    sort_by = request.args.get('sort_by', 'normalized_power_score')
    sort_order = request.args.get('sort_order', 'desc')

    sort_column = getattr(Miniature, sort_by, Miniature.normalized_power_score)
    if sort_order == 'desc':
        minis_query = minis_query.order_by(sort_column.desc())
    else:
        minis_query = minis_query.order_by(sort_column.asc())

    minis = minis_query.all()

    minis_data = []
    for mini in minis:
        mini_dict = {
            'id': mini.id,
            'name': mini.name,
            'set_name': mini.set_name,
            'factions': [f.name for f in mini.factions],
            'rank': mini.rank,
            'point_cost': mini.point_cost,
            'collector_number': mini.collector_number,
            'frq': mini.frq,
            'arc': mini.arc,
            'range': mini.range,
            'range_targets': mini.range_targets,
            'image_url': mini.image_url,
            'source_url': mini.source_url,
            'power_score': mini.power_score,
            'efficiency_score': mini.efficiency_score,
            'normalized_power_score': mini.normalized_power_score,
            'normalized_efficiency_score': mini.normalized_efficiency_score,
            'clicks': []
        }
        for click in mini.clicks:
            click_dict = {
                'click_number': click.click_number,
                'speed': click.speed,
                'attack': click.attack,
                'defense': click.defense,
                'damage': click.damage,
                'speed_ability': click.speed_ability.name if click.speed_ability else None,
                'speed_ability_color': click.speed_ability.color if click.speed_ability else '#FFFFFF',
                'attack_ability': click.attack_ability.name if click.attack_ability else None,
                'attack_ability_color': click.attack_ability.color if click.attack_ability else '#FFFFFF',
                'defense_ability': click.defense_ability.name if click.defense_ability else None,
                'defense_ability_color': click.defense_ability.color if click.defense_ability else '#FFFFFF',
                'damage_ability': click.damage_ability.name if click.damage_ability else None,
                'damage_ability_color': click.damage_ability.color if click.damage_ability else '#FFFFFF',
            }
            mini_dict['clicks'].append(click_dict)
        minis_data.append(mini_dict)

    session.close()
    return jsonify(minis_data)

@app.route('/api/distinct_values')
def get_distinct_values():
    session = Session()
    factions = [f[0] for f in session.query(Faction.name).distinct().order_by(Faction.name).all()]
    ranks = [r[0] for r in session.query(Miniature.rank).distinct().order_by(Miniature.rank).all()]
    session.close()
    return jsonify({'factions': factions, 'ranks': ranks})

@app.route('/api/distinct_abilities')
def get_distinct_abilities():
    session = Session()
    abilities = [a[0] for a in session.query(Ability.name).distinct().order_by(Ability.name).all()]
    session.close()
    return jsonify({'abilities': abilities})

@app.route('/api/shopping-list', methods=['GET'])
def get_shopping_list():
    session = Session()
    items = session.query(ShoppingListItem).options(
        joinedload(ShoppingListItem.miniature).joinedload(Miniature.factions)
    ).order_by(ShoppingListItem.added_at.desc()).all()
    
    result = []
    for item in items:
        result.append({
            'id': item.id,
            'store_link': item.store_link,
            'price': item.price,
            'quantity': item.quantity,
            'added_at': item.added_at,
            'miniature': {
                'id': item.miniature.id,
                'name': item.miniature.name,
                'image_url': item.miniature.image_url,
                'set_name': item.miniature.set_name,
                'rank': item.miniature.rank,
                'point_cost': item.miniature.point_cost,
                'source_url': item.miniature.source_url,
                'factions': [f.name for f in item.miniature.factions],
                'collector_number': item.miniature.collector_number
            }
        })
    session.close()
    return jsonify(result)

@app.route('/api/shopping-list', methods=['POST'])
def add_to_shopping_list():
    data = request.get_json()
    miniature_id = data.get('miniature_id')

    if not miniature_id:
        return jsonify({'error': 'Miniature ID is required'}), 400

    session = Session()
    
    existing_item = session.query(ShoppingListItem).filter_by(miniature_id=miniature_id).first()
    if existing_item:
        session.close()
        return jsonify({'message': 'Item already in shopping list'}), 200

    new_item = ShoppingListItem(miniature_id=miniature_id, quantity=1)
    session.add(new_item)
    session.commit()
    
    item_id = new_item.id
    session.close()
    
    return jsonify({'message': 'Item added to shopping list', 'id': item_id}), 201

@app.route('/api/shopping-list/<int:item_id>', methods=['PUT'])
def update_shopping_list_item(item_id):
    data = request.get_json()
    session = Session()
    item = session.query(ShoppingListItem).get(item_id)

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    if 'store_link' in data:
        item.store_link = data['store_link']
    if 'price' in data:
        # Use get to handle setting price to null
        item.price = data.get('price')
    if 'quantity' in data:
        item.quantity = data['quantity']

    session.commit()
    session.close()
    return jsonify({'message': 'Item updated successfully'})

@app.route('/api/shopping-list/<int:item_id>', methods=['DELETE'])
def delete_shopping_list_item(item_id):
    session = Session()
    item = session.query(ShoppingListItem).get(item_id)

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    session.delete(item)
    session.commit()
    session.close()
    return jsonify({'message': 'Item removed from shopping list'})

@app.route('/api/collection', methods=['GET'])
def get_collection():
    session = Session()
    items = session.query(CollectionItem).options(
        joinedload(CollectionItem.miniature).joinedload(Miniature.factions)
    ).all()
    
    result = []
    for item in items:
        result.append({
            'id': item.id,
            'quantity': item.quantity,
            'miniature': {
                'id': item.miniature.id,
                'name': item.miniature.name,
                'image_url': item.miniature.image_url,
                'set_name': item.miniature.set_name,
                'rank': item.miniature.rank,
                'point_cost': item.miniature.point_cost,
                'source_url': item.miniature.source_url,
                'factions': [f.name for f in item.miniature.factions],
                'collector_number': item.miniature.collector_number
            }
        })
    session.close()
    return jsonify(result)

@app.route('/api/collection', methods=['POST'])
def add_to_collection():
    data = request.get_json()
    miniature_id = data.get('miniature_id')
    quantity = data.get('quantity', 1)

    if not miniature_id:
        return jsonify({'error': 'Miniature ID is required'}), 400

    session = Session()
    
    existing_item = session.query(CollectionItem).filter_by(miniature_id=miniature_id).first()
    if existing_item:
        existing_item.quantity += quantity
    else:
        new_item = CollectionItem(miniature_id=miniature_id, quantity=quantity)
        session.add(new_item)
    
    session.commit()
    session.close()
    
    return jsonify({'message': 'Item added to collection'}), 201

@app.route('/api/collection/<int:miniature_id>', methods=['PUT'])
def update_collection_item(miniature_id):
    data = request.get_json()
    quantity = data.get('quantity')

    if quantity is None:
        return jsonify({'error': 'Quantity is required'}), 400

    session = Session()
    item = session.query(CollectionItem).filter_by(miniature_id=miniature_id).first()

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    item.quantity = quantity
    session.commit()
    session.close()
    return jsonify({'message': 'Item updated successfully'})

@app.route('/api/collection/<int:miniature_id>', methods=['DELETE'])
def delete_collection_item(miniature_id):
    session = Session()
    item = session.query(CollectionItem).filter_by(miniature_id=miniature_id).first()

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    session.delete(item)
    session.commit()
    session.close()
    return jsonify({'message': 'Item removed from collection'})

@app.route('/api/armies', methods=['GET'])
def get_armies():
    session = Session()
    armies = session.query(Army).options(
        joinedload(Army.miniatures).joinedload(ArmyMiniature.miniature)
    ).order_by(Army.created_at.desc()).all()
    result = []
    for army in armies:
        miniature_names = [{'name': am.miniature.name, 'quantity': am.quantity} for am in army.miniatures]
        total_cost = sum(am.miniature.point_cost * am.quantity for am in army.miniatures)
        result.append({
            'id': army.id,
            'name': army.name,
            'description': army.description,
            'created_at': army.created_at,
            'miniature_names': miniature_names,
            'total_cost': total_cost
        })
    session.close()
    return jsonify(result)

@app.route('/api/armies', methods=['POST'])
def create_army():
    data = request.get_json()
    name = data.get('name')
    description = data.get('description')

    if not name:
        return jsonify({'error': 'Army name is required'}), 400

    session = Session()
    new_army = Army(name=name, description=description)
    session.add(new_army)
    session.commit()
    
    army_id = new_army.id
    session.close()
    
    return jsonify({'message': 'Army created successfully', 'id': army_id}), 201

@app.route('/api/armies/<int:army_id>', methods=['GET'])
def get_army(army_id):
    session = Session()
    army = session.query(Army).options(
        joinedload(Army.miniatures).joinedload(ArmyMiniature.miniature).joinedload(Miniature.factions)
    ).get(army_id)

    if not army:
        session.close()
        return jsonify({'error': 'Army not found'}), 404

    miniatures = []
    for am in army.miniatures:
        miniatures.append({
            'id': am.miniature.id,
            'name': am.miniature.name,
            'image_url': am.miniature.image_url,
            'quantity': am.quantity,
            'point_cost': am.miniature.point_cost
        })

    result = {
        'id': army.id,
        'name': army.name,
        'description': army.description,
        'created_at': army.created_at,
        'miniatures': miniatures
    }
    session.close()
    return jsonify(result)

@app.route('/api/armies/<int:army_id>', methods=['DELETE'])
def delete_army(army_id):
    session = Session()
    army = session.query(Army).get(army_id)

    if not army:
        session.close()
        return jsonify({'error': 'Army not found'}), 404

    # Delete all miniatures associated with the army
    session.query(ArmyMiniature).filter_by(army_id=army_id).delete()

    session.delete(army)
    session.commit()
    session.close()
    return jsonify({'message': 'Army deleted successfully'})

@app.route('/api/armies/<int:army_id>/miniatures', methods=['POST'])
def add_miniature_to_army(army_id):
    data = request.get_json()
    miniature_id = data.get('miniature_id')
    quantity = data.get('quantity', 1)

    if not miniature_id:
        return jsonify({'error': 'Miniature ID is required'}), 400

    session = Session()
    
    existing_item = session.query(ArmyMiniature).filter_by(army_id=army_id, miniature_id=miniature_id).first()
    if existing_item:
        existing_item.quantity += quantity
    else:
        new_item = ArmyMiniature(army_id=army_id, miniature_id=miniature_id, quantity=quantity)
        session.add(new_item)
    
    session.commit()
    session.close()
    
    return jsonify({'message': 'Miniature added to army'}), 201

@app.route('/api/armies/<int:army_id>/miniatures/<int:miniature_id>', methods=['DELETE'])
def remove_miniature_from_army(army_id, miniature_id):
    session = Session()
    item = session.query(ArmyMiniature).filter_by(army_id=army_id, miniature_id=miniature_id).first()

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    session.delete(item)
    session.commit()
    session.close()
    return jsonify({'message': 'Item removed from army'})

@app.route('/api/armies/<int:army_id>/miniatures/<int:miniature_id>', methods=['PUT'])
def update_army_miniature(army_id, miniature_id):
    data = request.get_json()
    quantity = data.get('quantity')

    if quantity is None:
        return jsonify({'error': 'Quantity is required'}), 400

    session = Session()
    item = session.query(ArmyMiniature).filter_by(army_id=army_id, miniature_id=miniature_id).first()

    if not item:
        session.close()
        return jsonify({'error': 'Item not found'}), 404

    if quantity <= 0:
        session.delete(item)
    else:
        item.quantity = quantity
    session.commit()
    session.close()
    return jsonify({'message': 'Item updated successfully'})


if __name__ == '__main__':
    # This will create the tables if they don't exist
    Base.metadata.create_all(engine)
    app.run(debug=True, port=5001)