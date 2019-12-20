<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/details.css">
<link
	href="https://fonts.googleapis.com/css?family=Baskervville|Roboto+Mono&display=swap"
	rel="stylesheet">
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="/js/GoogleMap.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU&callback=initMap"
        async defer></script>

<title>ResourceFull - Details</title>
</head>

<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
<<<<<<< HEAD
		<div class="navbar movenavbar"><a class="text-light" href="/resourcefull/home">HOME</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull">ABOUT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/blog">BLOG</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/login">LOGIN</a></div>
		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div>

	<p class="welcome text-center">
		Hey
		<c:out value="${currentUser.first_name}"></c:out>
		<c:out value="${currentUser.last_name}"></c:out>
		take a look at your
		<c:out value="${community.name}" />
		Neighbor's wishlist!
	</p>
	<p class="contact text-center">
		Neighbor's Contact Information:
		<c:out value="${community.liaisoncontactname}" />
		<c:out value="${community.liaisoncontactnumber}" />
	</p>
	<div class="middleOfPage row">
		<div class="col-6">
			<table class="table ml-3">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Weekly Resource Need</th>
						<th scope="col">Date Last Filled</th>
						<th scope="col">Take Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td scope="row" class="tableText"><c:out
								value="${community.water}" /> gal of water
						</th>
						<td class="tableText"><c:forEach
								items="${community.water_filledAt}" var="water_date">
								<p>
									<c:out value="${water_date}" />
								</p>
							</c:forEach></td>
						<td class="tableText">
							<form action="/resourcefull/neighborhood/${community.id}"
								method="post">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="hidden"
									name="resource_type" value="water" /> <input
									class="btn btn-outline-secondary" type="submit"
									value="Fill Water" />
							</form>
						</td>
					</tr>
					<tr>
						<td scope="row" class="tableText"><c:out
								value="${community.food}" /> lbs of food
						</th>
						<td class="tableText"><c:forEach
								items="${community.food_filledAt}" var="food_date">
								<p>
									<c:out value="${food_date}" />
								</p>
							</c:forEach></td>
						<td class="tableText">
							<form action="/resourcefull/neighborhood/${community.id}"
								method="post">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="hidden"
									name="resource_type" value="food" /> <input
									class="btn btn-outline-secondary" type="submit"
									value="Fill Food" />
							</form>
						</td>
					</tr>
					<tr>
						<td scope="row" class="tableText"><c:out
								value="${community.hygienekits}" /> hygiene kits
						</th>
						<td class="tableText"><c:forEach
								items="${community.hygienekits_filledAt}" var="hygiene_date">
								<p>
									<c:out value="${hygiene_date}" />
								</p>
							</c:forEach></td>
						<td class="tableText">
							<form action="/resourcefull/neighborhood/${community.id}"
								method="post">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="hidden"
									name="resource_type" value="hygiene" /> <input
									class="btn btn-outline-secondary" type="submit"
									value="Fill Kits" />
							</form>
						</td>
					</tr>
				</tbody>
			</table>

			<a class="btn btn-outline-secondary mt-5"
				href="/resourcefull/edit/neighborhood/${community.id}">Edit <c:out
					value="${community.name}" /></a>
		</div>

		<div id="map" class="col-6"></div>
		<!-- end of row -->
	</div>

	<div class="messageBox ml-3 mt-5">
		<p class="text-center messageCenter">Message Center</p>
				<div class="box">
					<c:forEach var="message" items="${community.messages}">
						<p class="lead"><c:out value="${message.user.first_name}"/> says: <c:out value="${message.message}"/></p>
						
						<a class="text-danger ml-1" href="/comment/${message.id}/${community.id}/delete">Delete</a>
						
						<p>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
			    	</c:forEach>
			    </div>
				
				<form:form method="POST" action="/comment/create" modelAttribute="comment">
				<form:hidden path="user" value="${currentUser.id}"/>
				<form:hidden path="community" value="${community.id}"/>
					    <p>
				            <form:label path="message" class="col-sm-4 col-form-label lead" >Add Comment:</form:label>
				            <form:textarea path="message" class="form-control col-sm-12" type="text"/></textarea>
				        </p>
				        
					    <input class="btn btn-outline-secondary" type="submit" value="Submit"/>
				 </form:form>
	</div>



</body>
</html>