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

<title>ResourceFull</title>
</head>
<body>
	<div class="container">
		<p>
			Your
			<c:out value="${neighborhood.name}" />
			Neighbors
		</p>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Resource</th>
					<th scope="col">Date Last Filled</th>
					<th scope="col">Fill</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row"><c:out value="${commuity.water}"/> gal of water</th>
					<td>add date when button clicked</td>
					<td>add fill button</td>
				</tr>
				<tr>
					<th scope="row"><c:out value="${commuity.water}"/> lbs food</th>
					<td>add date when button clicked</td>
					<td>add fill button</td>
				</tr>
				<tr>
					<th scope="row"><c:out value="${commuity.hygienekits}"/> hygiene kits</th>
					<td>add date when button clicked</td>
					<td>add fill button</td>
				</tr>
			</tbody>
		</table>
		
		<p>Contact Information: <c:out value="${community.emergencycontactname}"/> (<c:out value="${community.emergencycontactnumber}"/>)</p>
		
	<%-- 	<div class="messageBox">
			<h1 class="display-4 text-success">Message Wall</h1>    
				<div class="box">
					<c:forEach var="message" items="${event.messages}">
						<p class="lead"><c:out value="${message.user.first_name}"/> says: <c:out value="${message.message}"/></p>
						
						<a class="text-danger ml-1" href="/comment/${message.id}/${event.id}/delete">Delete</a>
						
						<p>-----------------------------------------------------------</p>
			    	</c:forEach>
			    </div>
				
				<form:form method="POST" action="/comment/create" modelAttribute="comment">
				<form:hidden path="user" value="${user.id}"/>
				<form:hidden path="event" value="${event.id}"/>
					    <p>
				            <form:label path="message" class="col-sm-4 col-form-label lead" >Add Comment:</form:label>
				            <form:textarea path="message" class="form-control col-sm-12" type="text"/></textarea>
				        </p>
				        
					    <input class="btn btn-outline-success" type="submit" value="Submit"/>
				 </form:form>
			</div> --%>


		<!-- end of container -->




	
		<form action="/resourcefull/neighborhood/${community.id}" method="post" >
			<input type="hidden" name="resource_type" value="food"/>
			<button type="submit" >Fill Food</button>
		</form>
		<form action="/resourcefull/neighborhood/${community.id}" method="post" >
			<input type="hidden" name="resource_type" value="water"/>
			<button type="submit" >Fill Water</button>
		</form>
		<form action="/resourcefull/neighborhood/${community.id}" method="post" >
			<input type="hidden" name="resource_type" value="hygiene"/>
			<button type="submit" >Fill Hygiene</button>
		</form>
	
	
	
<!-- end of container -->
	</div>

</body>
</html>