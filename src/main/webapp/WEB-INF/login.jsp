<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">    
	
    <title>Resourcefull - Login</title>
    
</head>
<body>
	<div class="container">
	
	    <div class="login">
		    <h1 class="display-4 text-center text-primary">Login</h1>
		    
		    <c:if test="${logoutMessage != null}">
        <c:out value="${logoutMessage}"></c:out>
    </c:if>
    <h1>Login</h1>
    <c:if test="${errorMessage != null}">
        <c:out value="${errorMessage}"></c:out>
    </c:if>
   			 
		    <form method="post" action="/login">
		        <p>
		            <label class="col-sm-4 col-form-label" for="username">Username:</label>
		            <input class="form-control col-sm-6"  type="text" id="username" name="username"/>
		        </p>
		        <p>
		            <label class="col-sm-4 col-form-label" for="password">Password"</label>
		            <input class="form-control col-sm-6" type="password" id="password" name="password"/>
		        </p>
		         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		        <input class="btn btn-outline-primary mt-3" type="submit" value="Login"/>
		    </form>
		    
	    </div>
    </div>
</body>
</html>