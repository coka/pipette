//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {

  setTimeout(function() {
    $(".alert").fadeOut("slow", function() {
      $(this).remove();
    });
  }, 3000);

});
