$(document).ready(function() {
  $('#guess').click(function(){
    guess = prompt("Guess the secret code to reveal a json object in the javascript console.");
    $.ajax({
      url: "/.json",
      type: "get",
      data: {code: guess},
      success: function(callback){
        console.log(callback);
      },
       error: function(callback){
        console.log(callback.status);
      }
    })


  });
});


