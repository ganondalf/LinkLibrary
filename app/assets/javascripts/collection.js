var collectionIndex = {
  onReady: function(){
    $("#new_collection").hide();
    $("#newCollection").click(collectionIndex.showCollection);
    $("#new_collection").on("submit", collectionIndex.flashMessage);
    collectionIndex.testButton();
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
    },

  testButton: function(){
      var annotations=prompt('Enter your annotations here:','options');
      var linkUrl=document.location.href;
      var linkTitle=document.title;
      $.ajax({
        type: 'POST',
        url: 'http://localhost:3000/importlinks',
        dataType: 'json',
        data: {
          linkUrl: linkUrl,
          linkTitle: linkTitle
      }
    }).done(function(response){
        alert('Your link has been added');

    })
  },

};

$(document).ready(collectionIndex.onReady);



