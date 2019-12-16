<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    <link href="/css/authentication.css" rel="stylesheet" type="text/css"/>
    
    <title>Authentication Page</title>
    
</head>
<body>
	<div class="container">
		<div class="register">
	    	<h1 class="display-4 text-center text-success">Register</h1>
	    
	    	<p class="text-danger"><c:out value="${registrationError}" /></p>
	    	
		    <p class="text-danger"><form:errors path="user.*"/></p>
		    
		    <form:form method="POST" action="/registration" modelAttribute="user">
			    <p>
		            <form:label class="col-sm-4 col-form-label" path="first_name">First Name:</form:label>
		            <form:input class="form-control col-sm-6" type="text" path="first_name"/>
		        </p>
		        <p>
		            <form:label class="col-sm-4 col-form-label" path="last_name">Last Name:</form:label>
		            <form:input class="form-control col-sm-6" type="text" path="last_name"/>
		        </p>
		        <p>
		            <form:label class="col-sm-4 col-form-label" path="email">Email:</form:label>
		            <form:input class="form-control col-sm-6" type="email" path="email"/>
		        </p>
		        <p>
		            <form:label class="col-sm-4 col-form-label" path="city">City:</form:label>
		            <form:input class="form-control col-sm-6" type="text" path="city"/>
		        </p>
		        <p>
		            <form:label class="col-sm-2 col-form-label" path="state">State:</form:label>
		            <form:select path="state">
	        			<c:forEach items="${states}" var="state">
	            			<form:option value="${state}">${state}</form:option>
	        			</c:forEach>
	        		</form:select>
		        </p>
		        <p>
		            <form:label  class="col-sm-4 col-form-label" path="password">Password:</form:label>
		            <form:password class="form-control col-sm-6" path="password"/>
		        </p>
		        <p>
		            <form:label class="col-sm-6 col-form-label" path="passwordConfirmation">Password Confirmation:</form:label>
		            <form:password class="form-control col-sm-6" path="passwordConfirmation"/>
		        </p>
			    <input class="btn btn-outline-success mt-3" type="submit" value="Register"/>
		    </form:form>
	    </div>
	    
	    <div class="login">
		    <h1 class="display-4 text-center text-primary">Login</h1>
		    
		    <p class="text-danger"><c:out value="${loginError}" /></p>
		    
		    <form method="post" action="/login">
		        <p>
		            <label class="col-sm-4 col-form-label" for="email">Email</label>
		            <input class="form-control col-sm-6"  type="text" id="email" name="email"/>
		        </p>
		        <p>
		            <label class="col-sm-4 col-form-label" for="password">Password</label>
		            <input class="form-control col-sm-6" type="password" id="password" name="password"/>
		        </p>
		        <input class="btn btn-outline-primary mt-3" type="submit" value="Login"/>
		    </form>
	    </div>
    </div>
</body>
</html>