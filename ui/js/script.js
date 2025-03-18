let building = null;

window.addEventListener('message', (event) => {
    const message = event.data;

    if (message.type === 'open') {
        let uipage = document.getElementById('uipage');
        uipage.style.display = 'flex';
        
        const colors = message.colors;
        
        document.documentElement.style.setProperty('--primary-color', colors.primary);
        document.documentElement.style.setProperty('--primary-color-rgb', hexToRGBString(colors.primary));
        document.documentElement.style.setProperty('--color-container', hexToRGBString(colors.background));
        
        building = message.place;
        UpdateFloors(message.floors);
    }
    else if (message.type === 'close') {
        let uipage = document.getElementById('uipage');
        uipage.style.display = 'none';
    }
});

function hexToRGBString(hex) {
    console.log(hex);
    let r = parseInt(hex.slice(1, 3), 16);
    let g = parseInt(hex.slice(3, 5), 16);
    let b = parseInt(hex.slice(5, 7), 16);
    return `${r}, ${g}, ${b}`;
}

function UpdateFloors(floors) {
    const floorContainer = document.querySelector('#floor-container');
    floorContainer.innerHTML = '';

    floors.forEach((floor, index) => {
        const floorElement = document.createElement('div');
        floorElement.classList.add('floor');

        const floorBtn = document.createElement('div');
        floorBtn.classList.add('floor-btn');

        const labelBtn = document.createElement('div');
        labelBtn.classList.add('label-btn');
        labelBtn.textContent = floor.label;

        floorBtn.appendChild(labelBtn);
        floorElement.appendChild(floorBtn);
        floorContainer.appendChild(floorElement);
    });

    document.querySelectorAll('.floor').forEach((floor, index) => {
        floor.addEventListener('click', () => {
            fetch('https://KF_Elevators/selectFloor', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    floor: index + 1,
                    building: building,
                }),
            });
        });
    });
}

window.addEventListener('keydown', (event) => {
    if (event.key === 'Escape') {
        fetch('https://KF_Elevators/close');
    }
});