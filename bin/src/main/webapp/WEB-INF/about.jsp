<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/about.css" rel="stylesheet" type="text/css"/>
	
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
					    	<a class="nav-link text-white" href="/resourcefull/get-involved">GET INVOLVED</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link text-white" href="/resourcefull/news">NEWS</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link active" href="/resourcefull/about">ABOUT</a>
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
				<div class="col-8 mx-auto mt-5 mb-5">
					<h1>About Us</h1>
					<h4 class="mb-5">ResourceFull was built by a team of developers who are passionate about using technology for social justice. This pilot version allows users to create curbside communities as a map pin, resource needs table, and a message board in the city of Oakland. Future iterations will allow users to record and print donations given, add more resource needs to the individual community table, and get directions to community sites across the region. It is our hope that ResourceFull's easily shared and updated information will create more connected and compassionate communitiesacross the San Francisco Bay Area in the very near future.</h4>
				</div>
			</div> <!-- End of Row with Page Title -->
			
			<div class="row">		
				<div class="col-md-1"></div> 
				<div class="col">
					<h1 class="mt-5 mb-5">Meet the Team</h1>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row with Section Title -->
			
			<div class="row text-center">		
				<div class="col-md-1"></div> 
				<div class="col">
					<img class="img-fluid" src="/images/lauren.png" alt="error">
					<h4 class="font-weight-bolder">Lauren Seyranian</h4>
					<h5>Full-Stack Developer</h5>
					<pre><a href="https://github.com/laurenseyranian">Github</a> |<a href="https://www.linkedin.com/in/lauren-seyranian/">LinkedIn</a></pre>
				</div>
				<div class="col">
					<img class="img-fluid" src="/images/jamie.png" alt="error">
					<h4 class="font-weight-bolder">Jamie Ramirez</h4>
					<h5>Full-Stack Developer</h5>
					<pre><a href="https://github.com/jramiz">Github</a> |<a href="https://www.linkedin.com/in/jamielynnramirez/">LinkedIn</a></pre>
				</div>
				<div class="col">
					<img class="img-fluid" src="/images/lindsey.png" alt="error">
					<h4 class="font-weight-bolder">Lindsey Vaughn</h4>
					<h5>Full-Stack Developer</h5>
					<pre><a href="https://github.com/lindseyvaughn">Github</a> |<a href=https://www.linkedin.com/in/lindsey-vaughn-271706137/">LinkedIn</a></pre>
				</div>
				<div class="col">
					<img class="img-fluid" src="/images/jose.png" alt="error">
					<h4 class="font-weight-bolder">Jose Ramirez</h4>
					<h5>Designer</h5>
					<pre><a href="www.nebulasf.com ">Portfolio</a> |<a href="https://www.linkedin.com/in/joseramirezcalamateo/">LinkedIn</a></pre>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row with Team -->
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