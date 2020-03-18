<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/getinvolved.css" rel="stylesheet" type="text/css"/>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 	
	<title>About</title>
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
					    	<a class="nav-link active" href="/resourcefull/get-involved">GET INVOLVED</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/news">NEWS</a>
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
				<div class="col mx-auto mt-5 mb-5">
					<h1>Get Involved</h1>
					<h5 class="mb-5">About a quarter of the nation’s entire homeless population lack access basic needs.</h5>
					<h4 class="font-weight-bolder mt-5 mb-5">Basic Needs</h4>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Page Title -->
			
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col">
					<p class="font-weight-bolder">Clean Drinking Water</p>
					<p >Clean water is hard to get when you live on the streets. Weekly deliveries of 4 gallon per person will help your neighbor cook, clean and stay hydrated. We recommend bringing large water containers to cut down on waste and empower your neighbors to reuse the containers.</p>
				</div> 
				<div class="col">
					<p class="font-weight-bolder">Meals</p>
					<p>Clean water is hard to get when you live on the streets. Weekly deliveries of 4 gallon per person will help your neighbor cook, clean and stay hydrated. We recommend bringing large water containers to cut down on waste and empower your neighbors to reuse the containers.</p>
				</div> 
				<div class="col">
					<p class="font-weight-bolder">Hygiene Kits</p>
					<p>Hygiene is essential for safety and resiliency. Our unsheltered neighbors require a range of supplies that are easy to bring, such as travel size shampoo, soap, dental care, trash bags, and harm reduction such as sharps containers and sterilizing supplies. We recommend packing gallon size ziploc bags with anything and everything that you yourself would bring for hygiene and first aid to bring to your neighbors.</p>
				</div> 
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Items -->
			
			<div class="row mt-5 mb-5">
				<div class="col-md-1"></div> 
				<div class="col">
					<h4 class="font-weight-bolder mt-5">How It Works</h4>
				</div> 
				<div class="col-md-1"></div> 
				</div> <!-- End of Row with How-to-Steps Title -->
			
				<div class="row">
					<div class="col-md-1"></div> 
					<div class="col">
						<p class="font-weight-bolder">Step 1:</p>
						<p>Create an account to find out where and how to share resources.</p>
					</div> 
					<div class="col">
						<p class="font-weight-bolder">Step 4:</p>
						<p>Use Resourcefull to make your delivery and track your resource sharing.</p>
					</div> 
					<div class="col-md-1"></div> 
				</div> <!-- End of Row with How-to-Step 1 & 4  -->
			
			
				<div class="row">
					<div class="col-md-1"></div> 
					<div class="col">
						<p class="font-weight-bolder">Step 2:</p>
						<p>Gather food, water, and hygiene kits for your neighbors. </p>
					</div> 
					<div class="col">
						<p class="font-weight-bolder">Step 5:</p>
						<p>Leave a comment on the message board to share your experience with other community members.</p>
					</div> 
					<div class="col-md-1"></div> 
				</div> <!-- End of Row with How-to-Step 2 & 5  -->
				
				
				<div class="row">
					<div class="col-md-1"></div> 
					<div class="col">
						<p class="font-weight-bolder">Step 3:</p>
						<p>Review the weekly wishlist or resource needs list of your neighbors. </p>
					</div>
					<div class="col">
						<p class="font-weight-bolder">Step 6:</p>
						<p>Tell your friends and family about Resourcefull!</p>
					</div> 
					<div class="col-md-1"></div> 
				</div> <!-- End of Row with How-to-Step 3 & 5-->
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