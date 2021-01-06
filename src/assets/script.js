function toggleDarkMode(doToggle) {
    var bodyClasses = document.body.classList;
    var darkThemeClass = 'dark';

    doToggle ? bodyClasses.toggle(darkThemeClass) : false;
}

document.addEventListener("keyup", function(event) {
    var dKeyCode = 68;
    toggleDarkMode(event.keyCode === dKeyCode);
});

function initDarkMode() {
    var darkModeEnabled =
        window.matchMedia &&
        window.matchMedia('(prefers-color-scheme: dark)').matches;

     toggleDarkMode(darkModeEnabled);
}
