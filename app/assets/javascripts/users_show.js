var userShow = {
  onReady: function(){
    $("#menu").menu().hide();
    $("#new_link").hide();
    $("#linkLibrary").on("click", userShow.showLinkMenu);
    $("#addLinksDiv").click(userShow.showLinkForm);
    $('input[value="Create Link"]').on("click", userShow.flashMessage)
  },

  showLinkForm: function(event){
    event.preventDefault();
    $("#new_link").slideDown();
  },

  flashMessage: function(event){
    var title = $("#link_title").val();
    var url = $("#link_url").val();
    var annotations = $("#link_annotations").val();
    $.ajax({
      url: '/links',
      type: 'POST',
      dataType: 'json',
      data: {
            url: url,
            title: title,
            annotations: annotations
            }
      }).done(function(response){
          var newDiv = $("<div>");
          if(response.message === "success"){
            newDiv.text("Link added successfully!");
            $("#new_link").prepend(newDiv);
            setTimeout(function(){
              $("#new_link").slideUp();
            }, 2000);
          }else{
            newDiv.text("Something went wrong! Please try again.");
            $("#new_link").prepend(newDiv);
          }
      })
      $("#link_title").empty();
      $("#link_url").empty();
      $("#link_annotations").empty();
    },

    showLinkMenu: function(event){
      console.log("hello");
      $("#menu").slideDown();
    }

};

$(document).ready(userShow.onReady)
