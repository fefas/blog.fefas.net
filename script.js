$(document).ready(function () {

   $('#footer .name').click(function () {
      $(this).html('em'.split("").reverse().join("") + '@' + window.location.hostname);
   });
});
