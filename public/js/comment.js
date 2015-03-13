var employeeObject = function(employee) {
  this.name = empoyee.name
  this.comment = employee.comment
  this.store_name = employee.store_name
}

$(document).ready(function() {

  $('#new_review').on('click','a',function(e){
    e.preventDefault();

    $.ajax({
      url: "/review/new",
      type: "get",
      success: function(response){
        console.log(response);
        $('#new_review').empty().append(response)
      },
      error: function(response){
        console.log(response.status);
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

$('#new_review').on('submit','#review_form',function(e){
    e.preventDefault();
      $.ajax({
      url: "/review/new",
      type: "post",
      data: $('#review_form').serialize(),
      success: function(response){
        console.log(response)
        $('.review_table tbody').first().append(response)
        $('#new_review').empty().append("<a href ='/review/new'class='bttn'>New Review</a>")
      },
      error: function(response){
        console.log(response.status)
      }
    })
    });
});


