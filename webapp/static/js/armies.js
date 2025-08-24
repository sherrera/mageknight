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
        card.innerHTML = `
            <h3>${army.name}</h3>
            <p>${army.description || ''}</p>
            <p>Created at: ${new Date(army.created_at).toLocaleString()}</p>
            <a href="/armies/${army.id}" class="btn">Build</a>
            <button class="btn-delete" data-army-id="${army.id}">Delete</button>
        `;
        container.appendChild(card);
    });

    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', event => {
            const armyId = event.target.dataset.armyId;
            deleteArmy(armyId);
        });
    });
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