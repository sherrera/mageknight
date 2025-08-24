document.addEventListener('DOMContentLoaded', function() {
    fetchArmies();

    document.getElementById('createArmyBtn').addEventListener('click', createArmy);
});

async function fetchArmies() {
    try {
        const response = await fetch('/api/armies');
        const armies = await response.json();
        displayArmies(armies);
    } catch (error) {
        console.error('Error fetching armies:', error);
    }
}

function displayArmies(armies) {
    const container = document.getElementById('armiesContainer');
    container.innerHTML = '';

    if (armies.length === 0) {
        container.innerHTML = '<p>No armies found. Create one above!</p>';
        return;
    }

    armies.forEach(army => {
        const card = document.createElement('div');
        card.className = 'army-card';
        card.dataset.armyId = army.id;
        card.innerHTML = `
            <div class="army-display-mode">
                <h3 class="army-name-display">${army.name}</h3>
                <p class="army-description-display">${army.description || ''}</p>
                <p><strong>Total Cost:</strong> ${army.total_cost}</p>
                <p><strong>Miniatures:</strong>
                    <ul class="miniature-list">
                        ${army.miniature_names && army.miniature_names.length > 0 ? 
                            army.miniature_names.map(mini => `<li>${mini.name}${mini.quantity > 1 ? ` (${mini.quantity})` : ''}</li>`).join('') 
                            : '<li>None</li>'
                        }
                    </ul>
                </p>
                <p>Created at: ${new Date(army.created_at).toLocaleString()}</p>
                <a href="/armies/${army.id}" class="btn">Build</a>
                <button class="btn-edit" data-army-id="${army.id}">Edit</button>
                <button class="btn-delete" data-army-id="${army.id}">Delete</button>
            </div>
            <div class="army-edit-mode" style="display:none;">
                <input type="text" class="army-name-edit" value="${army.name}">
                <textarea class="army-description-edit">${army.description || ''}</textarea>
                <button class="btn-save" data-army-id="${army.id}">Save</button>
                <button class="btn-cancel" data-army-id="${army.id}">Cancel</button>
            </div>
        `;
        container.appendChild(card);
    });

    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', event => {
            const armyId = event.target.dataset.armyId;
            deleteArmy(armyId);
        });
    });

    document.querySelectorAll('.btn-edit').forEach(button => {
        button.addEventListener('click', event => {
            const armyId = event.target.dataset.armyId;
            editArmy(armyId);
        });
    });

    document.querySelectorAll('.btn-save').forEach(button => {
        button.addEventListener('click', event => {
            const armyId = event.target.dataset.armyId;
            saveArmy(armyId);
        });
    });

    document.querySelectorAll('.btn-cancel').forEach(button => {
        button.addEventListener('click', event => {
            const armyId = event.target.dataset.armyId;
            cancelEdit(armyId);
        });
    });
}

function editArmy(armyId) {
    const card = document.querySelector(`.army-card[data-army-id="${armyId}"]`);
    card.querySelector('.army-display-mode').style.display = 'none';
    card.querySelector('.army-edit-mode').style.display = 'block';
}

async function saveArmy(armyId) {
    const card = document.querySelector(`.army-card[data-army-id="${armyId}"]`);
    const newName = card.querySelector('.army-name-edit').value;
    const newDescription = card.querySelector('.army-description-edit').value;

    try {
        const response = await fetch(`/api/armies/${armyId}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ name: newName, description: newDescription }),
        });

        if (response.ok) {
            fetchArmies(); // Re-fetch all armies to update the display
        } else {
            const errorData = await response.json();
            alert(`Error saving army: ${errorData.error}`);
        }
    } catch (error) {
        console.error('Error saving army:', error);
    }
}

function cancelEdit(armyId) {
    const card = document.querySelector(`.army-card[data-army-id="${armyId}"]`);
    card.querySelector('.army-display-mode').style.display = 'block';
    card.querySelector('.army-edit-mode').style.display = 'none';
    // Revert input values to original (will happen on re-fetch if save was successful)
    // For immediate revert without re-fetch, you'd store original values
    // For now, just hide edit mode
}

async function createArmy() {
    const name = document.getElementById('armyName').value;
    const description = document.getElementById('armyDescription').value;

    if (!name) {
        alert('Army name is required.');
        return;
    }

    try {
        const response = await fetch('/api/armies', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ name, description }),
        });

        if (response.ok) {
            fetchArmies();
            document.getElementById('armyName').value = '';
            document.getElementById('armyDescription').value = '';
        } else {
            const errorData = await response.json();
            alert(`Error creating army: ${errorData.error}`);
        }
    } catch (error) {
        console.error('Error creating army:', error);
    }
}

async function deleteArmy(armyId) {
    if (!confirm('Are you sure you want to delete this army?')) {
        return;
    }

    try {
        const response = await fetch(`/api/armies/${armyId}`, {
            method: 'DELETE',
        });

        if (response.ok) {
            fetchArmies();
        } else {
            const errorData = await response.json();
            alert(`Error deleting army: ${errorData.error}`);
        }
    } catch (error) {
        console.error('Error deleting army:', error);
    }
}