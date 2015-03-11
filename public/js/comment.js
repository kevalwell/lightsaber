$(document).ready(function() {
  $('#new_review').on('click','a',function(e){
    e.preventDefault();

    $.ajax({
      url: "/review/new",
      type: "get",
      success: function(callback){
        console.log(callback);
        $('#new_review').replaceWith(callback)
      },
      error: function(callback){
        console.log(callback.status);
      }
    })
  });
  $('#new_employee').on('click', 'a', function(e){
    e.preventDefault();

    $.ajax({
      url: "/employee/new",
      type: "get",
        success: function(response){
          console.log(response);
          $('#new_employee').replaceWith(response)
      },
        error: function(response){
          console.log(response.status);
        }
    })
  })
$('#new_review').on('click','a',function(e){
    e.preventDefault();
      $.ajax({
      url: "/review/new",
      type: "post",
      data: null,
      success: function(response){
        $('#new_review').append(response)
      },
      error: function(response){
        console.log(response.status)
      }
    })
    })

});
