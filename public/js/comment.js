$(document.ready)(function(){

  $("#container").click(function() {
    $("#login").fadeIn("slow");
  });

$('#signup').click(function(e){
  e.preventDefault();
  $.ajax({
    url: '/'
    data: null,
    success: function(response){
      response;
    }
    error: function(callback){
        throw 500;
    }
  })


});
