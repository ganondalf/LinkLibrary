var collectionIndex = {
  onReady: function(){
    $("#newCollectionForm").hide();
    $("#newCollection").click(collectionIndex.makeNewCollection);
  },

  makeNewCollection: function(event){
    $("#newCollectionForm").slideDown();
    var name = $("#name").val();
    $("newCollectionForm").on('submit', function(event){
      $.ajax({
        type: 'POST',
        dataType: 'json',
        data: { collection: {
                name: name}
          }
        }).done(function(response){
          console.log(response);
        })
      })
    },

};

$(document).ready(collectionIndex.onReady);
