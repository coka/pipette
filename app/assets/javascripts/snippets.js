$(document).ready(function() {

  $("#execute").click(function () {
    command = $("#command").text();
    $.post("http://tourette.herokuapp.com", JSON.stringify({"command" : command}), function(response) {
      $("#output").append("<pre>" + response["output"] + "</pre>");
    }, "json");
  });

});
