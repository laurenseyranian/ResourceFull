<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="/css/signup.css" rel="stylesheet" type="text/css"/>
    
    <title>Resourcefull - Sign-Up</title>
    
</head>
<body>
	<div class="container">
		<div class="register">
	    	<h1 class="display-4 text-center text-success">Register</h1>
	    	    	
		    <p class="text-danger"><form:errors path="user.*"/></p>
		    
		    <form:form method="POST" action="/signup/process" modelAttribute="user">
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
		            <form:input class="form-control col-sm-6" type="text" path="email"/>
		        </p>
		         <p>
		            <form:label class="col-sm-4 col-form-label" path="username">Username:</form:label>
		            <form:input class="form-control col-sm-6" type="text" path="username"/>
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
    </div>
</body>
</html>