<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
	<title>Welcome Page</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width" />

<base href="/" />

<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script>var logout = function() {$.post("/logout", function() {$("#user").html('');$(".unauthenticated").show();$(".authenticated").hide();})return true;}</script>
<script type="text/javascript" src="/webjars/js-cookie/js.cookie.js"></script>
<script>$.ajaxSetup({beforeSend : function(xhr, settings) {if (settings.type == 'POST' || settings.type == 'PUT' || settings.type == 'DELETE') {if (!(/^http:.*/.test(settings.url) || /^https:.*/ .test(settings.url))) { xhr.setRequestHeader("X-XSRF-TOKEN", Cookies.get('XSRF-TOKEN'));}}}});</script>

<title>Resourcefull - Logged In Home Page</title>

</head>
<body>
	<div class="container">
	<div class="header">
		<div>Logo Goes Here</div>
		<p>Keeping Our Neighbors Safe Where They Are</p>
			<nav class="navbar navbar-expand-lg">
	  			<a class="navbar-brand" href="#">LEARN MORE</a>        	
	        	<form id="logoutForm" method="POST" action="/logout">
        			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        			<input type="submit" value="Logout!" />
    			</form>
			</nav>
	</div>
	
	<div class="neighborhoods">
		<a href="resourcefull/add/neighborhood">
		<h1>Welcome <c:out value="${currentUser.username}"></c:out>!</h1>			
			<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col" class="lead">Neighborhood</th>
							<th scope="col" class="lead"># of Neighbors</th>
						</tr>
					</thead>
	
					<tbody>
						<c:forEach items="${neighborhoods}" var="neighborhood">
							<tr>
								<td class="lead"><a href="resourcefull/neighborhood/${name.id}"><c:out value="${neighborhood.name}"/></a></td>
								<td class="lead"><c:out value="${neighborhood.residents}"/></td>
								<td class="lead"><c:out value="${event.city}"/></td>
								<td class="lead"><c:out value="${event.host.first_name}"/></td>
								<td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	
	
	

	


		<!-- end of container -->
	</div>
</body>
</html>