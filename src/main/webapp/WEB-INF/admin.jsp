<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<title>Welcome Page</title>
</head>
<body>
	<div class="container">
		<a class="btn btn-outline-danger mt-5 mb-5" href="/logout">Logout</a>
		
		<h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>
    
		<form id="logoutForm" method="POST" action="/logout">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	<input type="submit" value="Logout!" />
    	</form>
	    
	   
<!-- end of container -->
	</div>
</body>
</html>