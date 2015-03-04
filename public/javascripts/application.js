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

  $('#loginbutton').click(function(e){
    e.preventDefault();
    data = $('this').closest('form').serialize();
    console.log(data);
    $.ajax({
      url: "/login.json",
      type: "post",
      data: data,
      success: function(callback){
        console.log(callback);
        $('.container').replaceWith('<div>Hi '+callback.username+' </div>');
      },
      error: function(callback){
        console.log(callback.status);
      }
    })




  });
});
