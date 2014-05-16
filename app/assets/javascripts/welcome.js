var welcomeIndex = {
  onReady: function(){
    $(".newUserFormDiv").hide();
    $(".returningUserFormDiv").hide();
    $("#signup_button").click(welcomeIndex.showUserSignup);
    $("#login_button").click(welcomeIndex.showUserLogin);

  },

  showUserSignup: function(event){
      event.preventDefault();
      $(".newUserFormDiv").slideDown();
  },

  showUserLogin: function(event){
      event.preventDefault();
      $(".returningUserFormDiv").slideDown();
  },

};

$(document).ready(welcomeIndex.onReady)
