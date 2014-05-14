
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
getScript('http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js',function(){
    var linkAnnotation=prompt('Enter annotation:');
    var linkUrl=document.location.href;
    var linkTitle=document.title;
      $.ajax({
        type: 'POST',
        url: 'http://localhost:3000/importlinks',
        dataType: 'jsonp',
        crossDomain: true,
        data: {
          linkUrl: linkUrl,
          linkTitle: linkTitle,
          linkAnnotation: linkAnnotation
        }
      }).done(function(response){
          alert('Your link has been added');
      });
});


[blocked] The page at 'https://developers.google.com/speed/libraries/devguide#jquery' was loaded over HTTPS, but ran insecure content from 'http://localhost.3000/bookmarklet/loader': this content should also be loaded over HTTPS.

button:
javascript:void((function()%7Bvar doc%3Ddocument.createElement(%27script%27)%3Bdoc.setAttribute(%27src%27,%27http://localhost.3000/bookmarklet.js%27)%3Bdoc.setAttribute(%27type%27,%27text/javascript%27)%3Bdocument.getElementsByTagName(%27head%27)%5B0%5D.appendChild(doc)%3B%7D)())%3B
