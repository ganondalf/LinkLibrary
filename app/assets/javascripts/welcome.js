// create a new user account
var welcomeIndex = {
  onReady: function(){
    $(".newUserFormDiv").hide();
    $(".returningUserFormDiv").hide();
    $("#signup_button").click(welcomeIndex.showUserSignup);
    $("#login_button").click(welcomeIndex.showUserLogin);
    // $('input[value="Create User"]').on("click", welcomeIndex.createAccount);
    // $('input[value="Login"]').on("click", welcomeIndex.userLogin);
  },

  showUserSignup: function(event){
      event.preventDefault();
      $(".newUserFormDiv").slideDown();
  },

  showUserLogin: function(event){
      event.preventDefault();
      $(".returningUserFormDiv").slideDown();
  },

  // createAccount: function(event){
  //     event.preventDefault();
  //     var first_name=$("#user_first_name").val();
  //     var last_name=$("#user_last_name").val();
  //     var email=$("#user_email").val();
  //     var password=$("#user_password").val();
  //     var password_confirmation=$("#user_password_confirmation").val();
  //     $.ajax({
  //         url: '/users',
  //         type: 'post',
  //         dataType: 'json',
  //         data: { user:
  //                 { first_name: first_name,
  //                   last_name: last_name,
  //                   email: email,
  //                   password: password,
  //                   password_confirmation: password_confirmation,
  //                 }
  //               }
  //     })
  // },

  // userLogin: function(event){
  //   event.preventDefault();
  //   var email=$("#email").val();
  //   var password=$("#password").val();
  //   $.ajax({
  //       url: '/sessions',
  //       type: 'POST',
  //       dataType:'JSON',
  //       data: {
  //         email: email,
  //         password: password
  //         }
  //   }).done(function(response){
  //     if(response){
  //       alert("Login failed. Please try again!");
  //     }
  //   })
  // },

};

$(document).ready(welcomeIndex.onReady)
