<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 	<link rel="stylesheet" type="text/css" href="/css/blog.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Resourcefull-Blog</title>

</head>

<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="navbar movenavbar"><a class="text-light" href="/resourcefull/home">HOME</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">GET INVOLVED</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull">ABOUT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/blog">BLOG</a></div>
		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div>
	</div>
<img class="blog" alt="" src="/img/blog.gif">

<div class="header">
<p class="pblog">What's New?</p>
</div>


<div class="row border border-dark mb-3" >
	<div class=" col facts1">
	<img alt="" src="/img/proverty.jpg">
	</div>
	
<div class=" col facts1notes">
	<p>Roughly 28,200 people were homeless across the Bay Area, according to point-in-time counts in 2017. That was the third largest population in the country, after New York (76,500) and Los Angeles (55,200). The next largest overall number was 11,600 in Seattle and King County.</p>
	</div>
</div>

<div class="row border border-dark mb-3">

	<div class=" col facts2">
	<img alt="" src="/img/helpingwithhousing.jpg">
	</div>
	
	<div class=" col facts2notes">
	<p>The top four causes of homelessness among unaccompanied individuals were, lack of affordable housing, unemployment, poverty, mental illness and the lack of needed services, and substance abuse and the lack of needed services.</p>
	</div>
		
</div>

<div class= "row border border-dark">

	<div class=" col heart">
	<img alt="" src="/img/images-11.jpg">
	</div>
	
	<div class=" col facts3notes">
	<p>Homelessness nationally increased by 0.3% between 2016 - 2018, accounted for by a 2% increase in unsheltered individuals experiencing homelessness and a decrease in sheltered individuals experiencing homelessness.
Despite recent increases in unsheltered homelessness, since 2007 24% fewer people were experiencing homelessness in unsheltered locations</p>
	</div>


</div>
	<div class="articleBox">
		<h2>New York Times Articles </h2>
	
		<div class="article"></div>
	</div>	



<div id="player"></div>
<script> 

  // 2. This code loads the IFrame Player API code asynchronously.
  var tag = document.createElement('script');

  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  // 3. This function creates an <iframe> (and YouTube player)
  //    after the API code downloads.
  var player;
  function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
      height: '390',
      width: '640',
      videoId: 'dCaOeyjHgaE',
      events: {
        'onReady': onPlayerReady,
        'onStateChange': onPlayerStateChange
      }
    });
  }

  // 4. The API will call this function when the video player is ready.
  function onPlayerReady(event) {
    event.target.playVideo();
  }

  // 5. The API calls this function when the player's state changes.
  //    The function indicates that when playing a video (state=1),
  //    the player should play for six seconds and then stop.
  var done = false;
  function onPlayerStateChange(event) {
    if (event.data == YT.PlayerState.PLAYING && !done) {
      setTimeout(stopVideo, 6000);
      done = true;
    }
  }
  function stopVideo() {
    player.stopVideo();
  }
 
$(document).ready(function () {
    $.get('https://api.nytimes.com/svc/search/v2/articlesearch.json?q=homeless+population&api-key=3vV007lbGYtAKmPPk8lHB7wvZd2ddeSD', function (data) {
        console.log(data);
        $('.article').append("<div class=' h5 row nytimes'> <div class= 'col'>" + data.response.docs[5].headline.main + '</div> <div class="col"><a class="btn btn-outline-light" href="' + data.response.docs[5].web_url + '"> Read more! </a></div></div>')
       	 $('.article').append("<div class=' h5 row nytimes'> <div class= 'col'>" + data.response.docs[4].headline.main + '</div> <div class="col"><a class="btn btn-outline-light" href="' + data.response.docs[4].web_url + '"> Read more! </a></div></div>')
       	  $('.article').append("<div class=' h5 row nytimes'> <div class= 'col'>" + data.response.docs[3].headline.main + '</div> <div class="col"><a class="btn btn-outline-light" href="' + data.response.docs[3].web_url + '"> Read more! </a></div></div>')
       	   $('.article').append("<div class=' h5 row nytimes'> <div class= 'col'>" + data.response.docs[2].headline.main + '</div> <div class="col"><a class="btn btn-outline-light" href="' + data.response.docs[2].web_url + '"> Read more! </a></div></div>')
       	    $('.article').append("<div class=' h5 row nytimes'> <div class= 'col'>" + data.response.docs[1].headline.main + '</div> <div class="col"><a class="btn btn-outline-light" href="' + data.response.docs[1].web_url + '"> Read more! </a></div></div>')
    });
})
</script>





</body>
</html>