<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/news.css" rel="stylesheet" type="text/css"/>	
 	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 	
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
	    player = new YT.Player('youtube', {
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
	        	$('.NYTarticle').append("<div class='row ml-0 mb-3 mt-2'> <div>" + '1. ' + data.response.docs[1].headline.main + '</div> <div> <a class="readmorelink1" href="' + data.response.docs[1].web_url + '"> Read more</a></div></div>')
				$('.NYTarticle').append("<div class='row ml-0 mb-3'> <div>" + '2. ' + data.response.docs[2].headline.main + '</div> <div> <a class="readmorelink1" href="' + data.response.docs[2].web_url + '"> Read more</a></div></div>')
				$('.NYTarticle').append("<div class='row ml-0 mb-3'> <div>" + '3. ' + data.response.docs[3].headline.main + '</div> <div> <a class="readmorelink1" href="' + data.response.docs[3].web_url + '"> Read more</a></div></div>')
				$('.NYTarticle').append("<div class='row ml-0 mb-3'> <div>" + '4. ' + data.response.docs[4].headline.main + '</div> <div> <a class="readmorelink1" href="' + data.response.docs[4].web_url + '"> Read more</a></div></div>')
				$('.NYTarticle').append("<div class='row ml-0 mb-3'> <div>" + '5. ' + data.response.docs[5].headline.main + '</div> <div> <a class="readmorelink1" href="' + data.response.docs[5].web_url + '"> Read more</a></div></div>')
			});
		})
	</script>
	
	<title>News</title>

</head>

<body>
	<div class="container-fluid">
		<div id="header" class="row">
			<div class="col-md-1"></div> 
			<div class="col mr-auto mt-4">
				<h5 class="logo">ResourceFull</h5>
			</div>
			<div class="col-auto mt-3">
				<div class="dropdown">
	  				<button class="btn btn-lg dropdown-toggle username" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	  			<c:out value="${currentUser.first_name}"></c:out> <c:out value="${currentUser.last_name}"></c:out>
	  				</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">My Profile</a>
					    <a class="dropdown-item" href="#">Account Settings</a>
					    <a class="dropdown-item" href="#">Support</a>
					    <form id="logoutForm" method="POST" action="/logout">
	        				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	        				<input class="logout btn btn-link" type="submit" value="LOGOUT" />
	    				</form>
					</div>
				</div>
			</div>
			<div class="col-auto mt-4 pl-0">
				<img class="icon1" src="/images/signin.png" alt="error">
			</div>
			<div class="col-md-1"></div> 
		</div> <!-- End of Header -->
		
		<div class="banner">
			<div id="navbar" class="row">
				<div class="col-md-1"></div> 
				<div class="col-10 mt-2">
					<ul class="nav nav-tabs justify-content-end" id="myTab" role="tablist">
						<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull">HOME</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/my-portal">MY PORTAL</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/get-involved">GET INVOLVED</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link active" href="/resourcefull/news">NEWS</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/about">ABOUT</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/contact">CONTACT</a>
					  	</li>
					</ul>
				</div>
				<div class="col-md-1"></div>
				
				<div class="col-md-1"></div> 
				<div class="col-7">
					<h1 class="text-white mt-5 px-lg-5 ">Keeping Neighbors Safe Where They Are</h1>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of NavBar -->
		</div> <!-- End of Banner Div -->
		
		
		
		<div class="body">	
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col mt-5 mb-5">
					<h1>News Articles</h1>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row with Page Title-->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col">
					<img class="img-fluid" src="/images/article1.png" alt="Responsive image">
				</div>
				<div class="col">
					<p class="font-weight-bolder">How Large Is the Bay Area’s Homeless Population?</p>
					<p>April 10, 2019</p>
					<p>Roughly 28,200 people were homeless across the Bay Area, according to point-in-time counts in 2017. That was the third largest population in the country, after New York (76,500) and Los Angeles (55,200). The next largest overall number was 11,600 in Seattle and King County.</p>
					<a class="readmorelink2" href="https://www.google.com/search?q=Roughly+28%2C200+people+were+homeless+across+the+Bay+Area%2C+according+to+point-in-time+counts+in+2017.+That+was+the+third+largest+population+in+the+country%2C+after+New+York+(76%2C500)+and+Los+Angeles+(55%2C200).+The+next+largest+overall+number+was+11%2C600+in+Seattle+and+King+County&oq=Roughly+28%2C200+people+were+homeless+across+the+Bay+Area%2C+according+to+point-in-time+counts+in+2017.+That+was+the+third+largest+population+in+the+country%2C+after+New+York+(76%2C500)+and+Los+Angeles+(55%2C200).+The+next+largest+overall+number+was+11%2C600+in+Seattle+and+King+County&aqs=chrome..69i57j69i59.172j0j9&sourceid=chrome&ie=UTF-8">Read More</a>
				</div>
				<div class="col">
					<div class="line mb-2"></div>
					<p class="font-weight-bolder">New York Times Articles</p>
					<div class="line"></div>
					<div class="NYTarticle"></div>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row 1 with Articles + NYT-->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col-3">
					<p class="font-weight-bolder">The 2018 Annual Homeless Assessment Report</p>
					<p>December 2018</p>
					<p>Homelessness nationally increased by 0.3% between 2016 - 2018, accounted for by a 2% increase in unsheltered individuals experiencing homelessness and a decrease in sheltered individuals experiencing homelessness.</p>
					<p>Despite recent increases in unsheltered homelessness, since 2007 24% fewer people were experiencing homelessness in unsheltered locations.</p>
					<a class="readmorelink2" href="https://files.hudexchange.info/resources/documents/2018-AHAR-Part-1.pdf">Read More</a>
				</div>
				<div class="col-6">
					<img class="img-fluid img" src="/images/article2.png" alt="Responsive image">
				</div>
				
				<div class="col-md-1"></div>
			</div> <!-- End of Row 2 with Articles-->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col">
					<img class="img-fluid" src="/images/article3.png" alt="Responsive image">
				</div>
				<div class="col">
					<p class="font-weight-bolder">National Law Center on Homelessness & Poverty</p>
					<p>January 2015</p>
					<p>The top four causes of homelessness among unaccompanied individuals were, lack of affordable housing, unemployment, poverty, mental illness and the lack of needed services, and substance abuse and the lack of needed services.</p>
					<a class="readmorelink2" href="https://nlchp.org/wp-content/uploads/2018/10/Homeless_Stats_Fact_Sheet.pdf">Read More</a>
				</div>
				<div class="col">
					<div class="line mb-2"></div>
					<p class="font-weight-bolder">Featured YouTube Video</p>
					<div class="line mb-2"></div>
					<div id="youtube"></div>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row 3 with Articles-->
		</div><!-- End of Body -->
		
		<div class="footer mt-5">
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col-7 mt-5">
					<h2>Keeping Neighbors<br>Safe Where They Are</h2>
				</div>
				
				<div class="col-2 mt-5">
					<ul style="list-style-type:none;">
						<li id="middle1"><a href="">Resourcefull</a></li>
						<li><a href="">About Us</a></li>
						<li><a href="">Partners</a></li>
						<li><a href="/resourcefull/get-involved">Get Involved</a></li>		
						<li><a href="/resourcefull/news">News</a></li>
						<li><a href="/resourcefull/contact">Contact</a></li>						
						<li><a href="">Support</a>
					</ul>
				</div>
				
				<div class="col-2 mt-5">
					<ul style="list-style-type:none;">
						<li id="right1"><a href="">Get In Touch</a></li>
						<li><a href="">Linkedin</a></li>
						<li><a href="">Twitter</a></li>
						<li><a href="">Facebook</a></li>
						<li><a href="">Instagram</a></li>
					</ul>
				</div>
				<div class="col-md-1"></div> 
			</div>
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col row mt-5">
					<img class="icon2" src="/images/renewable.png" alt="error">
					<p>Resourcefull is powered by 100% renewable energy</p>
				</div>
				
				<div class="col-mr-auto row mt-5">
					<pre><a href="">Terms of Use</a>  |  <a href="">Privacy Policy</a>  |  <a href="">Legal</a></pre>
					<img class="icon3 ml-5" src="/images/copyright.png" alt="error">
					<p>2020 Resourcefull</p>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Copyright -->	
		</div> <!-- End of Row with Footer -->
	</div> <!-- End of Container -->
</body>
</html>