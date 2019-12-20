<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
    <link href="/css/signup.css" rel="stylesheet" type="text/css"/>
    
    <title>Resourcefull - Sign-Up</title>
    
</head>
<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="navbar movenavbar"><a class="text-light" href="/resourcefull/home">HOME</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull">ABOUT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/blog">BLOG</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/login">SIGN-UP</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/login">LOGIN</a></div>
		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div>
	</div>
	
	<div class="bodyOfPage">
		<div class="registerBox">
		    <p><form:errors path="user.*"/></p>
		    
		    <p class="signup">Sign-Up</p>
		    
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
			    <input class="btn btn-outline-secondary mt-3 signupButton" type="submit" value="Sign-up"/>
		    </form:form>
		</div>
	</div>
	
</body>
</html>