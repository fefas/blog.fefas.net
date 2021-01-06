function toggleDarkTheme() {
    var bodyClasses = document.body.classList;
    var darkThemeClass = 'dark';

    bodyClasses.contains(darkThemeClass)
        ? bodyClasses.remove(darkThemeClass)
        : bodyClasses.add(darkThemeClass);
}

document.addEventListener("keyup", function(event) {
    var dKeyCode = 68;
    event.keyCode === dKeyCode ? toggleDarkTheme() : false;
});
