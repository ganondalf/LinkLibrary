var collectionIndex = {
  onReady: function(){
    $("#new_collection").hide();
    $("#newCollection").click(collectionIndex.showCollection);
    $("#new_collection").on("submit", collectionIndex.flashMessage);
  },

  showCollection: function(event){
    $("#new_collection").slideDown();
  },

  flashMessage: function(event){
    var newCollection = $("<%= j(render @collection) %>");
    var newDiv = $("<div>").text("Collection added successfully!");
    $("#collectionsDiv").append(newCollection);
    $("#new_collection").prepend(newDiv);
    setTimeout(function(){
      $("#new_collection").slideUp();
      $("#collection_name").val("");
      $(newDiv).text(""); }, 1000);
  }

};

$(document).ready(collectionIndex.onReady);


