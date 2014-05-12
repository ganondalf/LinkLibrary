// create a new user account
var welcomeIndex = {
  onReady: function(){
    $("#newUserFormDiv").hide();
    $("#login_button").click(welcomeIndex.showUserLogin);
    $("#new_user").on("submit", welcomeIndex.userLogin);
  },

  showUserLogin: function(event){
      event.preventDefault();
      $("#newUserFormDiv").slideDown();
  },

  userLogin: function(event){
      event.preventDefault();
      $.ajax({}).done(function(response){
          console.log(response);
      })
  }

};

$(document).ready(welcomeIndex.onReady)

      // var firstName = $("#first_name").val();
      // var lastName = $("#last_name").val();
      // var email = $("#email").val();
      // var password = $("#password").val();
      // var password_confirmation = $("#password_confirmation").val();
      // type: 'POST',
      //   url: '/users',
      //   dataType: 'json',
      //   data: { user: {
  //               firstName: firstName,
  //               lastName: lastName,
  //               email: email,
  //               password: password,
  //               password_confirmation: password_confirmation}
  //             },
  //     }).done(function(response){
  //       console.log(response)
  //     })
  //   },
