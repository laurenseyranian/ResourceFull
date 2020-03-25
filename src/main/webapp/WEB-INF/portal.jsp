<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/resources/js/googleMapsApi"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/portal.css" rel="stylesheet" type="text/css"/>	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU&callback=initMap" async defer></script>

 
<script>

    var googMap = new gm.GoogleMap;
	var places = ${data};
	
    for(var comm of places){
        console.log(comm.location)
        googMap.geocode(comm.location, comm.name)
    }
	</script>
		
	<title>Portal</title>
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

		<div id="navbar" class="row">
			<div class="line mt-2 mb-2"></div>
			<div class="col-md-1"></div> 
			<div class="col-10">
				<ul class="nav nav-tabs justify-content-end" id="myTab" role="tablist">
					<li class="nav-item">
				    	<a class="nav-link" href="/resourcefull">HOME</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link active" id="active" href="/resourcefull/my-portal">MY PORTAL</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="/resourcefull/get-involved">GET INVOLVED</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="/resourcefull/news">NEWS</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="/resourcefull/about">ABOUT</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="/resourcefull/contact">CONTACT</a>
				  	</li>
				</ul>
			</div>
		</div> <!-- End of NavBar -->
		
		<div class="body">
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col-auto">
					<h1 class="font-weight-bolder mt-5">Welcome <c:out value="${currentUser.first_name}"></c:out>!</h1>
					<h4>Portal to your local Communities in need</h4>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Welcome-->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col-sm-10">
					<div class="table-responsive p-4" id="table">
						<table class="table table-hover">
							<thead class="thead">
								<tr>
									<th scope="col" class="pl-5">#</th>
									<th scope="col">Local Communities</th>
									<th scope="col"># of Neighbors</th>
									<th scope="col"># of Pets</th>
									<th scope="col">Resources Needed</th>
								</tr>
							</thead>
							<tbody class="tbody">
							<c:forEach items="${communities}" var="community">
								<tr>
									<td class="pl-5">#</td>
									<td><a href="/resourcefull/neighborhood/${community.id}"><c:out value="${community.name}"/></a></td>
									<td><c:out value="${community.residents}"/></td>
									<td><c:out value="${community.pets}"/></td>
									<td><a href="/resourcefull/neighborhood/${community.id}">View</a></td>	
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>	<!-- End of Div with Table-->
					<a class="mt-4 btn btn-outline btn-sm addbutton" href="/resourcefull/add/neighborhood">Add a Community</a>
				</div> <!-- End of Row with Table -->	
			</div> <!-- End of Row with Table and Add Button -->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 		
					<div class="col-sm-10">
						<div id="map"></div>
					</div>
					<div class="col-md-1"></div> 
			</div> <!-- End of Row with Map-->
		</div> <!-- End of Body -->
		
		<div class="footer mt-5">
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col-7 mt-5 ml-2">
					<h2>Keeping Neighbors<br>Safe Where They Are</h2>
				</div>
				
				<div class="col-1 mt-5">
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
				
				<div class="col-1 mt-5">
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
				<div class="col-6 row mt-5 mr-4 ml-1">
					<img class="icon2" src="/images/renewable.png" alt="error">
					<p>Resourcefull is powered by 100% renewable energy</p>
				</div>
				
				<div class="col-2 mt-5">
					<pre><a href="">Terms of Use</a>  |  <a href="">Privacy Policy</a>  |  <a href="">Legal</a></pre>
				</div>
				
				<div class="col-2 row mt-5">
					<img class="icon3" src="/images/copyright.png" alt="error">
					<p>2020 Resourcefull</p>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Copyright -->	
		</div> <!-- End of Row with Footer -->
	
	</div> <!-- End of Container -->
</body>
</html>

