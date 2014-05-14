
function getScript(url,success){
  var head = document.getElementsByTagName("head")[0], done = false;
  var script = document.createElement("script");
  script.src = url;
  script.onload = script.onreadystatechange = function(){
    if ( !done && (!this.readyState ||
        this.readyState == "loaded" || this.readyState == "complete") ) {
      done = true;
      success();
    }
  };
  head.appendChild(script);
};
getScript('http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js',function(){
    var linkAnnotation=prompt('Enter annotation:');
    var linkUrl=document.location.href;
    var linkTitle=document.title;
    var bookmark_token=$("#subnav").attr('class');
      $.ajax({
        type: 'POST',
        url: 'https://sleepy-escarpment-8057.herokuapp.com/importlinks',
        dataType: 'json',
        crossDomain: true,
        data: {
          linkUrl: linkUrl,
          linkTitle: linkTitle,
          linkAnnotation: linkAnnotation,
          bookmark_token: bookmark_token
        }
      }).done(function(response){
          alert('Your link has been added');
      });
});


