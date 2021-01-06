<<<<<<< HEAD
function toggleDarkMode(doToggle) {
    var bodyClasses = document.body.classList;
    var darkThemeClass = 'dark';

    doToggle ? bodyClasses.toggle(darkThemeClass) : false;
=======
function toggleDarkTheme() {
    var bodyClasses = document.body.classList;
    var darkThemeClass = 'dark';

    bodyClasses.contains(darkThemeClass)
        ? bodyClasses.remove(darkThemeClass)
        : bodyClasses.add(darkThemeClass);
>>>>>>> origin/main
}

document.addEventListener("keyup", function(event) {
    var dKeyCode = 68;
<<<<<<< HEAD
    toggleDarkMode(event.keyCode === dKeyCode);
});

window.onload = function() {
    var darkModeEnabled =
        window.matchMedia &&
        window.matchMedia('(prefers-color-scheme: dark)').matches;

     toggleDarkMode(darkModeEnabled);
}
=======
    event.keyCode === dKeyCode ? toggleDarkTheme() : false;
});
>>>>>>> origin/main
