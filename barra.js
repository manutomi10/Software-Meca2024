document.addEventListener('DOMContentLoaded', () => {
    const slider = document.getElementById('slider');
    const container = document.querySelector('.slider-container');
    const button = document.querySelector('.slider-button');
    let isDragging = false;
    let startX, startLeft;

    function onStart(e) {
        isDragging = true;
        startX = e.type.includes('mouse') ? e.clientX : e.touches[0].clientX;
        startLeft = slider.offsetLeft;
        e.preventDefault();
        container.style.cursor = 'grabbing';
    }

    function onMove(e) {
        if (!isDragging) return;
        const x = e.type.includes('mouse') ? e.clientX : e.touches[0].clientX;
        const walk = x - startX;
        let newLeft = startLeft + walk;
        newLeft = Math.max(-240, Math.min(newLeft, 0));
        slider.style.left = `${newLeft}px`;

        if (newLeft > -30) {
            unlock();
        }
    }

    function onEnd() {
        if (!isDragging) return;
        isDragging = false;
        container.style.cursor = 'default';
        if (!container.classList.contains('unlocked')) {
            slider.style.left = '-240px';
        }
    }

    function unlock() {
        container.classList.add('unlocked');
        slider.style.left = '0';
        setTimeout(() => {
            window.location.href = 'index_5.html';
            reset();
        }, 500);
    }

    function reset() {
        container.classList.remove('unlocked');
        slider.style.left = '-240px';
    }

    button.addEventListener('mousedown', onStart);
    button.addEventListener('touchstart', onStart);

    document.addEventListener('mousemove', onMove);
    document.addEventListener('touchmove', onMove);

    document.addEventListener('mouseup', onEnd);
    document.addEventListener('touchend', onEnd);
});