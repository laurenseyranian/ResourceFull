<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/contact.css" rel="stylesheet" type="text/css"/>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 	
	<title>Contact</title>
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
					    	<a class="nav-link text-white" href="/resourcefull/about">ABOUT</a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link active" href="/resourcefull/contact">CONTACT</a>
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
					<h1>Contact Us</h1>
					<h4 class="mb-5">ResourceFull is committed to providing you with an experience you feel good about and a service that helps you connect with your unsheltered neighbors. If for any reason you had a less than outstanding experience, please let us know. We’ll make it right.</h4>
				</div>
			</div> <!-- End of Row with Page Title -->
			
			<div class="row text-center">		
				<div class="col-md-1"></div> 
				<div class="col">
					<img class="img-fluid" src="/images/phone.jpg" alt="error">
					<h4 class="font-weight-bolder">Phone</h4>
					<h5>(510) 123-4567</h5>
				</div>
				<div class="col">
					<img class="img-fluid" src="/images/email.png" alt="error">
					<h4 class="font-weight-bolder">Email</h4>
					<h5>contact@resourcefull.com</h5>
				</div>
				<div class="col-md-1"></div>
			</div> <!-- End of Row with Contact Info -->
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