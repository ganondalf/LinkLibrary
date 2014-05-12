// create a new user account
var welcomeIndex = {
  onReady: function(){
   $("#newUserFormDiv").hide();
   $("#login_button").click(welcomeIndex.showUserLogin);
   $("#login_form").on("submit", welcomeIndex.userLogin);
  },

  showUserLogin: function(event){
      event.preventDefault();
      $("#newUserFormDiv").slideDown();
  },

  userLogin: function(event){
      event.preventDefault();
      var firstName = $("#first_name").val();
      var lastName = $("#last_name").val();
      var email = $("#email").val();
      var password = $("#password").val();
      var password_confirmation = $("#password_confirmation").val();
      $.ajax({
        type: 'POST',
        url: '/users',
        dataType: 'json',
        data: { user: {
                firstName: firstName,
                lastName: lastName,
                email: email,
                password: password,
                password_confirmation: password_confirmation}
              },
      }).done(function(response){
        console.log(response)
      })
    },
};

$(document).ready(welcomeIndex.onReady)

