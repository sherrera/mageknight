let armyMiniaturesData = {}; // Store full miniature data for tooltip

document.addEventListener('DOMContentLoaded', function() {
    fetchArmyDetails();
    fetchDistinctValues();
    fetchDistinctAbilities();
    fetchMiniatures();
});

function getSelectedOptions(selectElementId) {
    const select = document.getElementById(selectElementId);
    return Array.from(select.selectedOptions).map(option => option.value);
}

function applyFilters() {
    fetchMiniatures();
}

async function fetchArmyDetails() {
    try {
        const response = await fetch(`/api/armies/${armyId}`);
        const army = await response.json();
        document.getElementById('armyName').textContent = army.name;
        document.getElementById('armyDescription').textContent = army.description;
        armyMiniaturesData = {}; // Clear previous data
        army.miniatures.forEach(mini => {
            armyMiniaturesData[mini.id] = mini;
        });
        displayArmyMiniatures(army.miniatures);
    } catch (error) {
        console.error('Error fetching army details:', error);
    }
}

function displayArmyMiniatures(miniatures) {
    const container = document.getElementById('armyMiniaturesContainer');
    container.innerHTML = '';

    let totalCost = 0;

    if (miniatures.length === 0) {
        container.innerHTML = '<p>This army has no miniatures yet.</p>';
        document.getElementById('armyCost').textContent = 'Total Cost: 0';
        return;
    }

    miniatures.forEach(mini => {
        totalCost += mini.point_cost * mini.quantity;
        const card = document.createElement('div');
        card.className = 'miniature-card-small';
        card.innerHTML = `
            <img src="${mini.image_url}" alt="${mini.name}">
            <h4>${mini.name}</h4>
            <p>Quantity: ${mini.quantity}</p>
            ${mini.collection_quantity > 0 ? `<p>In Collection: ${mini.collection_quantity}</p>` : ''}
            ${mini.shopping_list_quantity > 0 ? `<p>In Shopping List: ${mini.shopping_list_quantity}</p>` : ''}
            <button class="btn-delete" data-mini-id="${mini.id}" data-quantity="${mini.quantity}">Remove</button>
        `;
        container.appendChild(card);
    });

    document.getElementById('armyCost').textContent = `Total Cost: ${totalCost}`;

    document.querySelectorAll('#armyMiniaturesContainer .btn-delete').forEach(button => {
        button.addEventListener('click', event => {
            const miniId = event.target.dataset.miniId;
            const quantity = parseInt(event.target.dataset.quantity);
            removeMiniatureFromArmy(miniId, quantity);
        });
    });

    document.querySelectorAll('#armyMiniaturesContainer .miniature-card-small').forEach(card => {
        card.addEventListener('mouseenter', event => {
            const miniId = event.currentTarget.dataset.miniId;
            const mini = armyMiniaturesData[miniId];
            if (mini) {
                showMiniatureTooltip(mini, event);
            }
        });

        card.addEventListener('mouseleave', () => {
            hideMiniatureTooltip();
        });
    });
}

async function fetchDistinctValues() {
    try {
        const response = await fetch('/api/distinct_values');
        const data = await response.json();

        const factionSelect = document.getElementById('factionFilter');
        data.factions.forEach(faction => {
            const option = document.createElement('option');
            option.value = faction;
            option.textContent = faction;
            factionSelect.appendChild(option);
        });

        const rankSelect = document.getElementById('rankFilter');
        data.ranks.forEach(rank => {
            const option = document.createElement('option');
            option.value = rank;
            option.textContent = rank;
            rankSelect.appendChild(option);
        });

    } catch (error) {
        console.error('Error fetching distinct values:', error);
    }
}

async function fetchDistinctAbilities() {
    try {
        const response = await fetch('/api/distinct_abilities');
        const data = await response.json();

        const abilitySelect = document.getElementById('abilityFilter');
        let allOption = document.createElement('option');
        allOption.value = '';
        allOption.textContent = 'All Abilities';
        abilitySelect.appendChild(allOption);

        data.abilities.forEach(ability => {
            const option = document.createElement('option');
            option.value = ability;
            option.textContent = ability;
            abilitySelect.appendChild(option);
        });

    } catch (error) {
        console.error('Error fetching distinct abilities:', error);
    }
}

async function fetchMiniatures() {
    const name = document.getElementById('nameFilter').value;
    const factions = getSelectedOptions('factionFilter');
    const set_name = document.getElementById('setFilter').value;
    const ranks = getSelectedOptions('rankFilter');
    const min_cost = document.getElementById('minCostFilter').value;
    const max_cost = document.getElementById('maxCostFilter').value;
    const min_speed = document.getElementById('minSpeedFilter').value;
    const min_attack = document.getElementById('minAttackFilter').value;
    const min_defense = document.getElementById('minDefenseFilter').value;
    const min_damage = document.getElementById('minDamageFilter').value;
    const min_range = document.getElementById('minRangeFilter').value;
    const sort_by = document.getElementById('sortFilter').value;
    const ability_filter = document.getElementById('abilityFilter').value;

    let url = '/api/minis?';
    if (name) url += `name=${encodeURIComponent(name)}&`;
    factions.forEach(f => url += `faction=${encodeURIComponent(f)}&`);
    if (set_name) url += `set_name=${encodeURIComponent(set_name)}&`;
    ranks.forEach(r => url += `rank=${encodeURIComponent(r)}&`);
    if (min_cost) url += `min_cost=${min_cost}&`;
    if (max_cost) url += `max_cost=${max_cost}&`;
    if (min_speed) url += `min_speed=${min_speed}&`;
    if (min_attack) url += `min_attack=${min_attack}&`;
    if (min_defense) url += `min_defense=${min_defense}&`;
    if (min_damage) url += `min_damage=${min_damage}&`;
    if (min_range) url += `min_range=${min_range}&`;
    if (sort_by) url += `sort_by=${sort_by}&`;
    if (ability_filter) url += `ability=${encodeURIComponent(ability_filter)}&`;

    url = url.slice(0, -1);

    try {
        const response = await fetch(url);
        const miniatures = await response.json();
        displayMiniatures(miniatures);
    } catch (error) {
        console.error('Error fetching miniatures:', error);
    }
}

function displayMiniatures(miniatures) {
    const container = document.getElementById('miniaturesContainer');
    container.innerHTML = '';

    if (miniatures.length === 0) {
        container.innerHTML = '<p>No miniatures found matching your criteria.</p>';
        return;
    }

    miniatures.forEach(mini => {
        const card = document.createElement('div');
        card.className = 'miniature-card';

        let clicksHtml = '';
        mini.clicks.forEach(click => {
            clicksHtml += `
                <div class="click-row">
                    <span>Click ${click.click_number}:</span>
                    <span>SPD: ${click.speed} ${click.speed_ability ? `<span class="ability-cell" style="background-color: ${click.speed_ability_color};">${click.speed_ability}</span>` : ''}</span>
                    <span>ATK: ${click.attack} ${click.attack_ability ? `<span class="ability-cell" style="background-color: ${click.attack_ability_color};">${click.attack_ability}</span>` : ''}</span>
                    <span>DEF: ${click.defense} ${click.defense_ability ? `<span class="ability-cell" style="background-color: ${click.defense_ability_color};">${click.defense_ability}</span>` : ''}</span>
                    <span>DMG: ${click.damage} ${click.damage_ability ? `<span class="ability-cell" style="background-color: ${click.damage_ability_color};">${click.damage_ability}</span>` : ''}</span>
                </div>
            `;
        });

        card.innerHTML = `
            <img src="${mini.image_url}" alt="${mini.name}">
            <h2>${mini.name}</h2>
            <p><strong>Set:</strong> ${mini.set_name}</p>
            <p><strong>Factions:</strong> ${mini.factions.join(', ')}</p>
            <p><strong>Rank:</strong> ${mini.rank}</p>
            <p><strong>Cost:</strong> ${mini.point_cost}</p>
            <p><strong>Power Score:</strong> ${mini.power_score} (Normalized: ${mini.normalized_power_score})</p>
            <p><strong>Efficiency Score:</strong> ${mini.efficiency_score} (Normalized: ${mini.normalized_efficiency_score})</p>
            <p><strong>Collector #:</strong> ${mini.collector_number}</p>
            <p><strong>FRQ:</strong> ${mini.frq}</p>
            <p><strong>Arc:</strong> ${mini.arc}</p>
            <p><strong>Range:</strong> ${mini.range} (${mini.range_targets} targets)</p>
            <div class="clicks-data">
                <h3>Click Stats:</h3>
                ${clicksHtml}
            </div>
            <p><a href="${mini.source_url}" target="_blank">Source URL</a></p>
            <button class="add-to-army-btn" data-mini-id="${mini.id}">Add to Army</button>
        `;
        container.appendChild(card);
    });

    document.querySelectorAll('.add-to-army-btn').forEach(button => {
        button.addEventListener('click', event => {
            const miniId = event.target.dataset.miniId;
            addMiniatureToArmy(miniId);
        });
    });
}

async function addMiniatureToArmy(miniatureId) {
    try {
        const response = await fetch(`/api/armies/${armyId}/miniatures`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ miniature_id: miniatureId }),
        });

        if (response.ok) {
            fetchArmyDetails();
        } else {
            const errorData = await response.json();
            alert(`Error adding miniature to army: ${errorData.error}`);
        }
    } catch (error) {
        console.error('Error adding miniature to army:', error);
    }
}

async function removeMiniatureFromArmy(miniatureId, currentQuantity) {
    try {
        const response = await fetch(`/api/armies/${armyId}/miniatures/${miniatureId}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ quantity: parseInt(currentQuantity) - 1 }),
        });

        if (response.ok) {
            fetchArmyDetails();
        } else {
            const errorData = await response.json();
            alert(`Error updating miniature quantity: ${errorData.error}`);
        }
    } catch (error) {
        console.error('Error updating miniature quantity:', error);
    }
}

function showMiniatureTooltip(mini, event) {
    const tooltip = document.getElementById('miniatureTooltip');
    let clicksHtml = '';
    mini.clicks.forEach(click => {
        clicksHtml += `
            <div class="click-row">
                <span>Click ${click.click_number}:</span>
                <span>SPD: ${click.speed} ${click.speed_ability ? `<span class="ability-cell" style="background-color: ${click.speed_ability_color};">${click.speed_ability}</span>` : ''}</span>
                <span>ATK: ${click.attack} ${click.attack_ability ? `<span class="ability-cell" style="background-color: ${click.attack_ability_color};">${click.attack_ability}</span>` : ''}</span>
                <span>DEF: ${click.defense} ${click.defense_ability ? `<span class="ability-cell" style="background-color: ${click.defense_ability_color};">${click.defense_ability}</span>` : ''}</span>
                <span>DMG: ${click.damage} ${click.damage_ability ? `<span class="ability-cell" style="background-color: ${click.damage_ability_color};">${click.damage_ability}</span>` : ''}</span>
            </div>
        `;
    });

    tooltip.innerHTML = `
        <h2>${mini.name}</h2>
        <p><strong>Set:</strong> ${mini.set_name}</p>
        <p><strong>Factions:</strong> ${mini.factions.join(', ')}</p>
        <p><strong>Rank:</strong> ${mini.rank}</p>
        <p><strong>Cost:</strong> ${mini.point_cost}</p>
        <p><strong>Power Score:</strong> ${mini.power_score} (Normalized: ${mini.normalized_power_score})</p>
        <p><strong>Efficiency Score:</strong> ${mini.efficiency_score} (Normalized: ${mini.normalized_efficiency_score})</p>
        <p><strong>Collector #:</strong> ${mini.collector_number}</p>
        <p><strong>FRQ:</strong> ${mini.frq}</p>
        <p><strong>Arc:</strong> ${mini.arc}</p>
        <p><strong>Range:</strong> ${mini.range} (${mini.range_targets} targets)</p>
        <div class="clicks-data">
            <h3>Click Stats:</h3>
            ${clicksHtml}
        </div>
        <p><a href="${mini.source_url}" target="_blank">Source URL</a></p>
    `;

    // Position the tooltip
    tooltip.style.left = `${event.pageX + 15}px`;
    tooltip.style.top = `${event.pageY + 15}px`;
    tooltip.style.display = 'block';
}

function hideMiniatureTooltip() {
    document.getElementById('miniatureTooltip').style.display = 'none';
}