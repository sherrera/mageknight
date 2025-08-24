document.addEventListener('DOMContentLoaded', function() {
    // Function to get query parameters from URL
    function getQueryParams() {
        const params = {};
        window.location.search.substring(1).split('&').forEach(param => {
            const [key, value] = param.split('=');
            if (key && value) {
                params[decodeURIComponent(key)] = decodeURIComponent(value.replace(/\+/g, ' '));
            }
        });
        return params;
    }

    const queryParams = getQueryParams();
    if (queryParams.name) {
        const nameFilterInput = document.getElementById('nameFilter');
        if (nameFilterInput) {
            nameFilterInput.value = queryParams.name;
        }
    }

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

function addFactionFilter(factionName) {
    const factionSelect = document.getElementById('factionFilter');
    for (let i = 0; i < factionSelect.options.length; i++) {
        if (factionSelect.options[i].value === factionName) {
            factionSelect.options[i].selected = true;
            break;
        }
    }
    fetchMiniatures();
}

function copyToClipboard(text, element) {
    navigator.clipboard.writeText(text).then(() => {
        const originalText = element.textContent;
        element.textContent = 'Copied!';
        setTimeout(() => {
            element.textContent = originalText;
        }, 1000);
    }).catch(err => {
        console.error('Failed to copy text: ', err);
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
        // Add a default "All Abilities" option
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

    let url = '/api/minis?collection=true&';
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

    // Remove trailing & if any
    url = url.slice(0, -1);

    try {
        const response = await fetch(url);
        const miniatures = await response.json();
        const collectionResponse = await fetch('/api/collection');
        const collection = await collectionResponse.json();
        const collectionMap = {};
        collection.forEach(item => {
            collectionMap[item.miniature.id] = item.quantity;
        });
        displayMiniatures(miniatures, collectionMap);
    } catch (error) {
        console.error('Error fetching miniatures:', error);
    }
}

function displayMiniatures(miniatures, collectionMap) {
    const container = document.getElementById('miniaturesContainer');
    container.innerHTML = ''; // Clear previous results

    if (miniatures.length === 0) {
        container.innerHTML = '<p>No miniatures found in your collection.</p>';
        document.getElementById('total-minis-display').textContent = 'Total Minis: 0';
        return;
    }

    let totalMinis = 0;

    miniatures.forEach(mini => {
        const quantity = collectionMap[mini.id] || 1;
        totalMinis += quantity;
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
            <h2 onclick="copyToClipboard('${mini.name}', this)" style="cursor: pointer;" title="Copy to Clipboard">${mini.name}</h2>
            <p><strong>Set:</strong> ${mini.set_name}</p>
            <p><strong>Factions:</strong>
                ${mini.factions.map(faction => `<span class="faction-tag" onclick="addFactionFilter('${faction}')">${faction}</span>`).join(' ')}
            </p>
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
            <p><strong>Quantity:</strong> <input type="number" class="quantity-input" data-mini-id="${mini.id}" value="${quantity}" min="1"></p>
            <p><a href="${mini.source_url}" target="_blank">Source URL</a></p>
            <button class="remove-from-collection-btn" data-mini-id="${mini.id}">Remove from Collection</button>
        `;
        container.appendChild(card);
    });

    document.getElementById('total-minis-display').textContent = `Total Minis: ${totalMinis}`;

    // Add event listeners to the buttons
    document.querySelectorAll('.remove-from-collection-btn').forEach(button => {
        button.addEventListener('click', event => {
            const miniId = event.target.dataset.miniId;
            removeFromCollection(miniId, event.target);
        });
    });

    document.querySelectorAll('.quantity-input').forEach(input => {
        input.addEventListener('change', event => {
            const miniId = event.target.dataset.miniId;
            const quantity = event.target.value;
            updateQuantity(miniId, quantity);
        });
    });
}

function removeFromCollection(miniatureId, buttonElement) {
    fetch(`/api/collection/${miniatureId}`, {
        method: 'DELETE',
    })
    .then(response => response.json())
    .then(data => {
        console.log(data.message);
        buttonElement.closest('.miniature-card').remove();
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}

function updateQuantity(miniatureId, quantity) {
    fetch(`/api/collection/${miniatureId}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ quantity: quantity }),
    })
    .then(response => response.json())
    .then(data => {
        console.log(data.message);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}
