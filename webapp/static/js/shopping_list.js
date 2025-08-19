document.addEventListener('DOMContentLoaded', function() {
    console.log("Shopping list script loaded! Version 2.");
    const shoppingListContainer = document.getElementById('shopping-list-container');

    function fetchShoppingList() {
        fetch('/api/shopping-list')
            .then(response => response.json())
            .then(data => {
                renderShoppingList(data);
            });
    }

    function renderShoppingList(items) {
        shoppingListContainer.innerHTML = '';
        if (items.length === 0) {
            shoppingListContainer.innerHTML = '<p>Your shopping list is empty.</p>';
            return;
        }

        const totalPriceContainer = document.createElement('div');
        totalPriceContainer.id = 'total-price-container';
        totalPriceContainer.innerHTML = '<h2>Total: $<span id="total-price">0.00</span> | Total Minis: <span id="total-minis">0</span></h2>';
        shoppingListContainer.appendChild(totalPriceContainer);

        items.forEach(item => {
            const card = document.createElement('div');
            card.className = 'shopping-list-item';
            const price = item.price ? parseFloat(item.price) : 0;
            const quantity = item.quantity; // Use quantity from server
            const subtotal = price * quantity;

            card.innerHTML = `
                <div class="shopping-list-item-col-1">
                    <img src="${item.miniature.image_url}" alt="${item.miniature.name}" class="shopping-list-item-image">
                </div>
                <div class="shopping-list-item-col-2">
                    <h3><a href="#" class="mini-name-link" data-mini-name="${item.miniature.name}" data-knight-ware-link="${item.miniature.source_url}">${item.miniature.name}</a></h3>
                    <p>Faction(s): ${item.miniature.factions.join(', ')}</p>
                    <p>Rank: ${item.miniature.rank}</p>
                    <p>Cost: ${item.miniature.point_cost}</p>
                    <p>Collector #: ${item.miniature.collector_number}</p>
                    <p>
                        Store Link: 
                        <a href="${item.store_link}" target="_blank">${item.store_link ? 'Link' : 'N/A'}</a>
                    </p>
                </div>
                <div class="shopping-list-item-col-3">
                    <div class="quantity-control">
                        <button class="quantity-btn minus-btn" data-id="${item.id}">-</button>
                        <span class="quantity-value">${quantity}</span>
                        <button class="quantity-btn plus-btn" data-id="${item.id}">+</button>
                    </div>
                    <p>Price: $<span class="price-value">${price.toFixed(2)}</span></p>
                    <p>Subtotal: $<span class="subtotal-value">${subtotal.toFixed(2)}</span></p>
                </div>
                <div class="shopping-list-item-col-4">
                    <div class="shopping-list-inputs">
                        <input type="text" class="store-link-input" placeholder="Store Link" value="${item.store_link || ''}">
                        <input type="number" class="price-input" placeholder="Price" step="0.01" value="${item.price || ''}">
                        <div class="shopping-list-buttons">
                            <button class="save-btn" data-id="${item.id}">Save</button>
                            <button class="remove-btn" data-id="${item.id}">Remove</button>
                        </div>
                    </div>
                </div>
            `;
            shoppingListContainer.appendChild(card);
        });

        updateTotals();
    }

    function updateTotals() {
        const items = shoppingListContainer.querySelectorAll('.shopping-list-item');
        const totalPriceEl = document.getElementById('total-price');
        const totalMinisEl = document.getElementById('total-minis');
        let total = 0;
        let totalMinis = 0;

        items.forEach(item => {
            const subtotalEl = item.querySelector('.subtotal-value');
            const quantityEl = item.querySelector('.quantity-value'); // Get quantity from DOM
            if (subtotalEl && quantityEl) {
                total += parseFloat(subtotalEl.textContent);
                totalMinis += parseInt(quantityEl.textContent);
            }
        });

        if (totalPriceEl) {
            totalPriceEl.textContent = total.toFixed(2);
        }
        if (totalMinisEl) {
            totalMinisEl.textContent = totalMinis;
        }
    }

    function updateItemPrice(card) {
        const priceEl = card.querySelector('.price-value');
        const quantityEl = card.querySelector('.quantity-value');
        const subtotalEl = card.querySelector('.subtotal-value');

        if (priceEl && quantityEl && subtotalEl) {
            const price = parseFloat(priceEl.textContent);
            const quantity = parseInt(quantityEl.textContent);
            const subtotal = price * quantity;
            subtotalEl.textContent = subtotal.toFixed(2);
            updateTotals();
        }
    }

    shoppingListContainer.addEventListener('click', function(e) {
        const target = e.target;
        const itemId = target.dataset.id;

        if (target.classList.contains('plus-btn')) {
            const card = target.closest('.shopping-list-item');
            const quantityEl = card.querySelector('.quantity-value');
            let quantity = parseInt(quantityEl.textContent);
            quantity++;
            quantityEl.textContent = quantity;
            updateItemPrice(card);
            updateShoppingListItem(itemId, { quantity: quantity });
        } else if (target.classList.contains('mini-name-link')) {
            e.preventDefault(); // Prevent default link behavior
            const miniName = target.dataset.miniName;
            const searchUrl = `/?name=${encodeURIComponent(miniName)}`;
            window.open(searchUrl, '_blank');
        } else if (target.classList.contains('minus-btn')) {
            const card = target.closest('.shopping-list-item');
            const quantityEl = card.querySelector('.quantity-value');
            let quantity = parseInt(quantityEl.textContent);
            if (quantity > 1) {
                quantity--;
                quantityEl.textContent = quantity;
                updateItemPrice(card);
                updateShoppingListItem(itemId, { quantity: quantity });
            }
        } else if (target.classList.contains('save-btn')) {
            const card = target.closest('.shopping-list-item');
            const storeLink = card.querySelector('.store-link-input').value;
            const price = card.querySelector('.price-input').value;

            updateShoppingListItem(itemId, { 
                store_link: storeLink,
                price: price ? parseFloat(price) : null
            }).then(() => {
                fetchShoppingList(); // Refresh the list after saving
            });
        } else if (target.classList.contains('remove-btn')) {
            removeShoppingListItem(itemId);
        }
    });

    function updateShoppingListItem(id, data) {
        return fetch(`/api/shopping-list/${id}`, { // return the promise
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data),
        })
        .then(response => response.json())
        .then(data => {
            console.log(data.message);
            // Optionally, provide user feedback
        });
    }

    function removeShoppingListItem(id) {
        fetch(`/api/shopping-list/${id}`, {
            method: 'DELETE',
        })
        .then(response => response.json())
        .then(data => {
            console.log(data.message);
            fetchShoppingList(); // Refresh the list
        });
    }

    fetchShoppingList();

    document.getElementById('export-csv-btn').addEventListener('click', exportShoppingListToCSV);

    function exportShoppingListToCSV() {
        const items = [];
        document.querySelectorAll('.shopping-list-item').forEach(card => {
            const miniName = card.querySelector('.mini-name-link').dataset.miniName;
            const knightWareLink = card.querySelector('.mini-name-link').dataset.knightWareLink;
            const storeLink = card.querySelector('.store-link-input').value;
            const price = parseFloat(card.querySelector('.price-value').textContent);
            const quantity = parseInt(card.querySelector('.quantity-value').textContent);
            const subtotal = parseFloat(card.querySelector('.subtotal-value').textContent);

            items.push({
                miniName,
                knightWareLink,
                storeLink,
                price,
                quantity,
                subtotal
            });
        });

        let csvContent = "Miniature Name,Knight-Ware Link,Store Link,Price,Quantity,Subtotal\n";
        items.forEach(item => {
            csvContent += `${escapeCsv(item.miniName)},${escapeCsv(item.knightWareLink)},${escapeCsv(item.storeLink)},${item.price.toFixed(2)},${item.quantity},${item.subtotal.toFixed(2)}\n`;
        });

        const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
        const link = document.createElement('a');
        if (link.download !== undefined) { // Feature detection for download attribute
            const url = URL.createObjectURL(blob);
            link.setAttribute('href', url);
            link.setAttribute('download', 'mageknight_shopping_list.csv');
            link.style.visibility = 'hidden';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    }

    function escapeCsv(value) {
        if (value === null || value === undefined) {
            return '';
        }
        let stringValue = String(value);
        if (stringValue.includes(',') || stringValue.includes('"') || stringValue.includes('\n')) {
            return `"${stringValue.replace(/"/g, '""')}"`;
        }
        return stringValue;
    }
});