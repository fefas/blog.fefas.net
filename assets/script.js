var myName = 'Felipe Martins';

$(document).ready(function () {

   $('#footer .name').click(function () {
      if ($(this).text() == myName) {
         $(this).html('em'.split("").reverse().join("") + '@' + window.location.hostname);
      } else {
         $(this).html(myName);
      }
   });
});
