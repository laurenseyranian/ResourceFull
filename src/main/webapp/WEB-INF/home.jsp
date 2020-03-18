<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/home.css" rel="stylesheet" type="text/css"/>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	<title>Home</title>

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
					    	<a class="nav-link active" href="/resourcefull">HOME</a>
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
				<div class="col-6 mx-auto" style="width: 200px;">
					<h3 class="mt-5 mb-5">Alameda County Health Care for the Homeless recently reported that "At least 28,000 Alameda County residents over 1.6% of the County population will experience homelessness this year."</h3>
				</div> 
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Quote -->
			
			<div class="row">
			<div class="col-md-1"></div>
				<div class="col-5 mt-5">
					<h4 class="font-weight-bolder">Want to help your unhoused neighbors, but not sure how?</h4>
				</div>
				<div class="col-5 mt-5">
					<p>Join ResourceFull to connect and share your resources with your neighbors! Sign-up to view locations, resources need lists, and message boards for unhoused neighbors in your area!</p>
					<p>One person can't solve the problem, but together we can make a difference.</p>
					<a class="mt-4 btn btn-outline btn-sm signupbutton" href="/resourcefull/register">Sign Up</a>
					
				</div>
				<div class="col-md-1"></div> 
				
				<div class="mt-5 mb-2"></div>
			</div> <!-- End of Row with Picture 1 -->
			
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col">
					<div class="line mt-5 mb-5"></div>
					<h3>Curbside Communities are in need of these items:</h3>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Items List Intro -->
			
			<div class="row">	
				<div class="col-md-1"></div> 
				<div class="col-2 mt-5">
					<h4 class="font-weight-bolder">Clean Drinking Water</h4>
					<p>California had about 130,000 homeless people as of January 2018 according to the Water Foundation Organization. That’s about a quarter of the nation’s entire homeless population. More than 70% of homeless people lack access to clean drinking water, making it a constant a daily struggle. <a href="/resourcefull/news">Read More</a></p>
				</div>
				
				<div class="col mt-5 mb-5">
					<img class="img-fluid" src="/images/water.jpg" alt="Responsive image">
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row about Water -->
			
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col mt-5 mb-5">
					<img class="img-fluid" src="/images/food.jpg" alt="Responsive image">
				</div>
				
				<div class="col-2 mt-5 mb-5">
					<h4 class="font-weight-bolder">Meals</h4>
						<p>Last year, 6.4 million households skipped meals multiple times and ate much less than they were used to according to the National Homeless Organization. That means that 5.4% of the nation experienced abnormal eating practices such as making meals last for hours, or binge eating.  <a href="/resourcefull/news">Read More</a></p>				
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row about Meals -->
			
			
			<div class="row">
				<div class="col-md-1"></div> 	
				<div class="col-2 mt-5 mb-5">
					<h4 class="font-weight-bolder">Hygiene Kits</h4>
						<p> Persons experiencing homelessness in the United States experience significant barriers to self-care and personal hygiene, including limited access to clean showers, laundry and hand washing facilities according to the National Homeless Organization. <a href="/resourcefull/news">Read More</a></p>
				</div>
				
				<div class="col mt-5 mb-5">
					<img class="img-fluid" src="/images/hygienekit.jpg" alt="Responsive image">
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row about Hygiene Kits -->
			
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-5 border border-right-0 rounded-left pt-5">
					<h3 class="pl-3">Contact Resourcefull</h3>
					<h5 class="pl-3">team@resourcefull.com</h5>
				</div>
				
				<div class="col-5 border border-left-0 rounded-right mr-5 pt-5">
					<form class="pr-4">
						<div class="form-row">
    						<div class="col">
    							<label class="col-form-label">First Name</label>
     							 <input type="text" class="form-control" placeholder="First name">
    						</div>
							
							<div class="col">
								<label class="col-form-label">Last Name</label>
								<input type="text" class="form-control" placeholder="Last name">
							 </div>
						</div> <!-- End of Row with First Name and Last Name -->
							
						<label for="exampleFormControlInput1">Email address</label>
						<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="yourname@domain.com">
					    
						<label class="col-4 col-form-label">Subject</label>
						<input class="form-control" type="text" placeholder="Type subject here">
	
						<label for="exampleFormControlTextarea1">Message</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Type your message here"></textarea>
													
						<button type="submit" class="mt-4 btn btn-outline btn-sm submitbutton mb-5">Submit</button>
					</form>
					</div>
				</div> <!-- End of Row with Contact -->
			<div class="col-md-1"></div> 
		</div> <!-- End of Body -->
		
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