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
        // fetch metrics concurrently
        let metrics = null;
        let metricsStatusEl = document.getElementById('metrics-status');
        try {
            const metricsResp = await fetch('/api/minis/metrics');
            if (metricsResp.ok) {
                metrics = await metricsResp.json();
                if (metricsStatusEl) { metricsStatusEl.textContent = 'Metrics: loaded'; metricsStatusEl.style.color = 'green'; }
            } else {
                if (metricsStatusEl) { metricsStatusEl.textContent = 'Metrics: not available'; metricsStatusEl.style.color = 'orange'; }
            }
        } catch (e) {
            console.warn('Metrics not available:', e);
            if (metricsStatusEl) { metricsStatusEl.textContent = 'Metrics: failed to load'; metricsStatusEl.style.color = 'red'; }
        }
        displayMiniatures(miniatures, collectionMap, metrics);
    } catch (error) {
        console.error('Error fetching miniatures:', error);
    }
}

function displayMiniatures(miniatures, collectionMap, metrics) {
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
             <div class="stat-chips" id="stat-chips-${mini.id}"></div>
            <div class="clicks-data">
                <h3>Click Stats:</h3>
                ${clicksHtml}
            </div>
            <p><strong>Quantity:</strong> <input type="number" class="quantity-input" data-mini-id="${mini.id}" value="${quantity}" min="1"></p>
            <p><a href="${mini.source_url}" target="_blank">Source URL</a></p>
            <button class="remove-from-collection-btn" data-mini-id="${mini.id}">Remove from Collection</button>
        `;
        container.appendChild(card);

        // render stat chips if metrics available
        if (metrics && metrics.minis) {
            const m = metrics.minis[String(mini.id)];
            if (m) {
                const chipContainer = document.getElementById(`stat-chips-${mini.id}`);
                const stats = ['attack','defense','speed','damage','range'];
                stats.forEach(s => {
                    const sData = m.stats[s];
                    const chip = document.createElement('span');
                    chip.className = 'stat-chip';
                    if (!sData) {
                        chip.textContent = `${s}: -`;
                        chip.style.background = '#ddd';
                    } else {
                        chip.textContent = `${s}: ${sData.value}`;
                        const z = sData.point_bin_z ?? sData.global_z ?? 0;
                        // simple color mapping
                        if (z >= 1.5) chip.style.background = '#196127';
                        else if (z >= 0.5) chip.style.background = '#7bc96f';
                        else if (z <= -1.5) chip.style.background = '#8b0000';
                        else if (z <= -0.5) chip.style.background = '#ff7b7b';
                        else chip.style.background = '#c6e48b';

                        // attach click to open modal with more metrics
                        chip.style.cursor = 'pointer';
                        chip.addEventListener('click', () => openMiniModal(mini, m));
                    }
                    chipContainer.appendChild(chip);
                });
            }
        }
    });

    document.getElementById('total-minis-display').textContent = `Total Minis: ${totalMinis}`;

    // create modal container
    if (!document.getElementById('mini-modal')) {
        const modal = document.createElement('div');
        modal.id = 'mini-modal';
        modal.className = 'mini-modal';
        modal.style.display = 'none';
        document.body.appendChild(modal);
    }

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

// Detailed modal for mini metrics
function openMiniModal(mini, metrics) {
    let modal = document.getElementById('mini-modal');
    if (!modal) {
        modal = document.createElement('div');
        modal.id = 'mini-modal';
        modal.className = 'mini-modal';
        document.body.appendChild(modal);
    }
    modal.innerHTML = '';
    modal.style.display = 'block';
    modal.style.position = 'fixed';
    modal.style.left = '50%';
    modal.style.top = '50%';
    modal.style.transform = 'translate(-50%, -50%)';
    modal.style.background = '#fff';
    modal.style.padding = '20px';
    modal.style.border = '1px solid #333';
    modal.style.maxHeight = '80vh';
    modal.style.overflow = 'auto';

    const title = document.createElement('h2');
    title.textContent = mini.name;
    modal.appendChild(title);

    const statsTable = document.createElement('table');
    statsTable.style.width = '100%';
    const header = document.createElement('tr');
    header.innerHTML = `<th>Stat</th><th>Value</th><th>Global Median</th><th>Point Bin Median</th><th>Quantile Median</th><th>Global %ile</th><th>Point %ile</th><th>Quantile %ile</th>`;
    statsTable.appendChild(header);

    ['attack','defense','speed','damage','range'].forEach(s => {
        const sData = metrics && metrics.stats ? metrics.stats[s] : null;
        const row = document.createElement('tr');
        if (!sData) {
            row.innerHTML = `<td>${s}</td><td colspan="7">No data</td>`;
        } else {
            const safe = v => (v === null || v === undefined) ? '-' : (typeof v === 'number' ? (Math.round((v + Number.EPSILON) * 100) / 100) : v);
            const gp = sData.global_percentile !== undefined && sData.global_percentile !== null ? `${Math.round(sData.global_percentile * 10)/10}%` : '-';
            const pp = sData.point_bin_percentile !== undefined && sData.point_bin_percentile !== null ? `${Math.round(sData.point_bin_percentile * 10)/10}%` : '-';
            const qp = sData.quantile_bin_percentile !== undefined && sData.quantile_bin_percentile !== null ? `${Math.round(sData.quantile_bin_percentile * 10)/10}%` : '-';
            row.innerHTML = `<td>${s}</td><td>${safe(sData.value)}</td><td>${safe(sData.global_median)}</td><td>${safe(sData.point_bin_median)}</td><td>${safe(sData.quantile_bin_median)}</td><td>${gp}</td><td>${pp}</td><td>${qp}</td>`;
        }
        statsTable.appendChild(row);
    });
    modal.appendChild(statsTable);

    const closeBtn = document.createElement('button');
    closeBtn.textContent = 'Close';
    closeBtn.addEventListener('click', () => { modal.style.display = 'none'; });
    modal.appendChild(closeBtn);
}
