<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/readone.css" rel="stylesheet" type="text/css"/>	
    
    <title>One Community</title>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU&callback=initMap" async defer></script>
    <script>
     class GoogleMap{
            constructor(){
                this.instance = this;
                this.key = 'AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU'
            }

            geocode(location, name) {
                axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
                    params: {
                        address: location,
                        key: 'AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU'
                    }
                })
                .then((response) => {

                    //log full response
                    console.log(response);

                //geometry
                var lat = response.data.results[0].geometry.location.lat;
                var lng = response.data.results[0].geometry.location.lng;
                var marker = [
                    {
                        coords:{lat: lat, lng: lng },
                        content: '<h4>'+name+' Neighbors</h4>'
                    }
                ]
                addMarker(marker[0])
                
            })
            .catch(function (error) {
                console.log(error);
            });
        };
        
    }

    function addMarker(props) {
        var marker = new google.maps.Marker({
            position: props.coords,
            map: map,
            icon:'http://maps.google.com/mapfiles/ms/icons/campground.png'
        });
        //Check for custom icon
        if (props.iconImage) {
            //Set icon image
            marker.setIcon(props.iconImage);
        }
        if (props.content) {
            var infoWindow = new google.maps.InfoWindow({
                content: props.content
            });

            marker.addListener('click', function () {
                infoWindow.open(map, marker);
            });
        }
    }
    var map;
    function initMap() {
        //Map options
        var options = {
            zoom: 13,
            center: { lat: 37.8043514, lng: -122.2711639 }
        }
        //New map
        map = new google.maps.Map(document.getElementById('map'), options);
    }

    var googMap = new GoogleMap();
    var comm = ${data};
    googMap.geocode(comm.location, comm.name);
    
	</script>
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

		<div class="body mt-5">
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col">
					<h1 class="font-weight-bolder"><c:out value="${community.name}"/></h1>
					<h3>Neighbors Wishlist!</h3>
				</div>
				<div class="col-auto">
					<a href="/resourcefull/my-portal">View All Communities ></a>
				</div>
				<div class="col-md-1"></div> 
			</div> <!-- End of Row with Location-->
			
			<div class="row mt-5">
				<div class="col-md-1"></div> 
				<div class="col-auto">
					<h3>Weekly Resources Needed</h3>
				</div>
				<div class="col">
					<p>This wishlist will restart every Sunday.</p>
				</div>
			</div> <!-- End of Row with Table Header -->
			
			<div class="row">
				<div class="col-md-1"></div> 
				<div class="col-sm-5">
					<div class="table-responsive p-4" id="table">
						<table class="table table-hover">
							<thead class="thead">
								<tr>
									<th scope="col" class="pl-5">Wishlist</th>
									<th scope="col">Date Filled</th>
									<th scope="col">Take Action</th>
								</tr>
							</thead>
							<tbody class="tbody">
								<tr>
									<td scope="row" class="pl-5">Water: <c:out value="${community.water}" /> Gallons
									<td>
										<c:forEach items="${community.water_filledAt}" var="water_date">
											<p>
												<fmt:formatDate pattern ="MMMM dd, yyyy" value ="${water_date}"/>
											</p>
										</c:forEach>
									</td>
									<td>
										<form action="/resourcefull/neighborhood/${community.id}"
											method="post">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
											<input type="hidden" name="resource_type" value="water" /> 
											<input class="btn btn-outline btn-sm tablebutton" type="submit" value="Fill Water" />
										</form>
									</td>
								</tr>
								<tr>
									<td scope="row" class="pl-5">Food: <c:out value="${community.food}"/>lbs
									<td>
										<c:forEach items="${community.food_filledAt}" var="food_date">
											<p>
												<fmt:formatDate pattern ="MMMM dd, yyyy" value ="${food_date}"/>
											</p>
										</c:forEach>
									</td>
									<td>
										<form action="/resourcefull/neighborhood/${community.id}" method="post">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
											<input type="hidden" name="resource_type" value="food" /> 
											<input class="btn btn-outline btn-sm tablebutton" type="submit" value="Fill Food" />
										</form>
									</td>
								</tr>
								<tr>
									<td scope="row" class="pl-5">Hygiene Kits: <c:out value="${community.hygienekits}" />
									<td class="tableText">
										<c:forEach items="${community.hygienekits_filledAt}" var="hygiene_date">
											<p>
												<fmt:formatDate pattern ="MMMM dd, yyyy" value ="${hygiene_date}"/>
											</p>
										</c:forEach>
									</td>
									<td>
										<form action="/resourcefull/neighborhood/${community.id}"
											method="post">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<input type="hidden" name="resource_type" value="hygiene" /> 
											<input class="btn btn-outline btn-sm tablebutton" type="submit" value="Fill Kits" />
										</form>
									</td>
								</tr>
							</tbody>
						</table>
					</div>	<!-- End of Div with Table-->
					<a class="float-right mt-4 btn btn-outline btn-sm editbutton" href="/resourcefull/edit/neighborhood/${community.id}">Edit <c:out value="${community.name}" /></a>
				</div> <!-- End of Row with Map and Edit Button -->	
						
				<div class="col-sm-5">
					<div id="map"></div>
				</div>
			</div> <!-- End of Row with Table and Map-->
	    	
	    	<div class="row mt-5">
				<div class="col-md-1"></div>
	   			<div class="col">
	   				<h4>Liason Information</h4>
	      		</div>
	    		<div class="col-md-1"></div>
	    	</div> <!-- End of Row with Liason Name-->
	    	
	    	<div class="row">
				<div class="col-md-1"></div>
	   			<div class="col">
	   				<h5><c:out value="${community.liaisoncontactname}"/></h5>
	      		</div>
	      		<div class="col-8">
	   				<h6>p: <c:out value="${community.liaisoncontactnumber}"/></h6>
	   				<h6>e: <c:out value="${community.liaisoncontactnumber}"/></h6>
	      		</div>
	    		<div class="col-md-1"></div>
	    	</div> <!-- End of Row with Liason Info-->
	    	
	    	<div class="row mt-5">
				<div class="col-md-1"></div>
	   			<div class="col">
	   				<h3>Community Message Center</h3>
	      		</div>
	    		<div class="col-md-1"></div>
	    	</div> <!-- End of Row with Message Center Header-->
	    	
	    	<div class="row mt-5">
				<div class="col-md-1"></div>
			
	   			<div class="col-sm-5 leavemessagebox rounded-left">
					<form:form method="POST" action="/comment/create" modelAttribute="comment">
						<form:hidden path="user" value="${currentUser.id}"/>
						<form:hidden path="community" value="${community.id}"/>
						<p>
						   <form:label path="message" class="col-sm-4 col-form-label lead pl-0 pt-3" >Leave a Message</form:label>
						   <form:textarea path="message" class="form-control col-sm-8" rows="7" type="text"/>
						</p>    
						<input class="btn btn-outline btn-sm submitbutton" type="submit" value="Submit"/>
					</form:form>
				</div>
			
				<div class="col-sm-5 allmessagesbox rounded-right">
					<h6 class="pt-3">Community Messages</h6>
					<div class="line"></div>
					<c:forEach var="message" items="${community.messages}">
						<p class="dinline-block"><p class="messageText dinline-block"><c:out value="${message.message}"/></p> (by <c:out value="${message.user.first_name}"/> on <fmt:formatDate pattern ="MMMM dd, yyyy" value ="${message.createdAt}"/>) <a class="text-danger float-right mr-3" href="/comment/${message.id}/${community.id}/delete">Delete</a>	</p>					
						<div class="line"></div>
				    </c:forEach>
				</div>
	
				
				<div class="col-md-1"></div>
			</div>	<!-- End of Row with Message Center Header-->
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