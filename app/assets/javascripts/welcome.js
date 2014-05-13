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
