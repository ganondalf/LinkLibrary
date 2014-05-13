var userShow = {
  onReady: function(){
    $("#new_link").hide();
    $("#addLinksDiv").click(userShow.showLinkForm)
    $('input[value="Create Link"]').on("click", userShow.flashMessage)
  },

  showLinkForm: function(event){
    event.preventDefault();
    $("#new_link").slideDown();
  },

  flashMessage: function(event){
    var newDiv = $("<div>").text("Link added successfully!");
    $("#new_link").prepend(newDiv);
    setTimeout(function(){
      $("#new_link").slideUp();
      $("#collection_name").val("");
      $(newDiv).text("");
    }, 1000);
  },
};

$(document).ready(userShow.onReady)
