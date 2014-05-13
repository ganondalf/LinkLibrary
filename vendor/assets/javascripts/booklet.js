<a href="javascript:void((function(){
  var saveLink = window.location.host + window.location.pathname;
  var hsb=document.createElement('h1').text(saveLink);
  hsb.setAttribute('src','http://localhost:3000');
  hsb.setAttribute('type','text/javascript');
  document.getElementsByTagName('head')[0].appendChild(hsb);})());" class="buy_later">Buy Later</a>


<a href="javascript:var%20annotations=prompt(&quot;Enter%20annotations%20here%20(optional):&quot;)">Enter annotations here (optional):</a>


<a
href="javascript:var%20yourname=prompt(&quot;What%20is%20your%20name?&quot;);alert%20(&quot;Hello,%20"+yourname+"!&amp;quot;)">What is your name?</a>


<a href="javascript:void(var%20annotations=prompt('Enter your annotations here:','options');var linkUrl=document.location.href;var linkTitle=document.title;$.ajax({type: 'POST',url: 'http://localhost:3000/importlinks',dataType: 'json',data: {linkUrl: linkUrl,linkTitle: linkTitle}}).done(function(response){alert('Your link has been added');})"
</a>
