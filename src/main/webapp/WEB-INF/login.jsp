<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
    <link href="/css/login.css" rel="stylesheet" type="text/css"/>	
    
    <title>Resourcefull - Login</title>
    
</head>
<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="movenavbar navbar"><a class="text-light" href="/resourcefull/home">HOME</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">GET INVOLVED</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull">ABOUT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/blog">BLOG</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">CONTACT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/signup">SIGN-UP</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/login">LOGIN</a></div>
<%-- 		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div> --%>
	</div>
	
	<p class="text-center login">Login</p>
	
	<div class="loginBox">
			<c:if test="${logoutMessage != null}">
        		<c:out value="${logoutMessage}"></c:out>
    		</c:if>
    		<c:if test="${errorMessage != null}">
        		<c:out value="${errorMessage}"></c:out>
    		</c:if>
   			 
		    <form method="post" action="/resourcefull/login">
		        <p>
		            <label class="col-sm-4 col-form-label" for="username">Username:</label>
		            <input class="form-control col-sm-6"  type="text" id="username" name="username"/>
		        </p>
		        <p>
		            <label class="col-sm-4 col-form-label" for="password">Password:</label>
		            <input class="form-control col-sm-6" type="password" id="password" name="password"/>
		        </p>
		         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		        <input class="btn btn-outline-secondary mt-3 loginButton" type="submit" value="Login"/>
		    </form>
		    
	    </div>
</body>
</html>