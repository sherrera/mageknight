document.addEventListener('DOMContentLoaded', function() {
    const themeToggleButton = document.getElementById('theme-toggle');
    const currentTheme = localStorage.getItem('theme');

    if (currentTheme) {
        document.body.classList.add(currentTheme);
    }

    themeToggleButton.addEventListener('click', function() {
        document.body.classList.toggle('dark-mode');
        let theme = 'light';
        if (document.body.classList.contains('dark-mode')) {
            theme = 'dark-mode';
        }
        localStorage.setItem('theme', theme);
    });
});
