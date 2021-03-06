<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&display=swap" rel="stylesheet">
    <link href="/css/signin.css" rel="stylesheet" type="text/css"/>	
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</head>
<body>
	<div class="container-fluid">
		<div id="header" class="row">
			<div class="col-md-1"></div> 
			<div class="col mr-auto mt-4">
				<h5 class="logo">ResourceFull</h5>
			</div>
			<div class="col-auto mt-4 pl-0">
				<img class="icon1" src="/images/signin.png" alt="error">
			</div>
			<div class="col-md-1"></div> 
		</div> <!-- End of Header -->

		<div id="navbar" class="row">
			<div class="line mt-2 mb-2"></div>
			<div class="col-md-1"></div> 
			<div class="col-10 mb-5">
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
		
		<div class="body row">
			<div class="col-md-1"></div> 
			<div class="col-sm-5 mt-5">
				<h1 class="mt-5">Keeping Neighbors Safe <br> Where They Are</h1>
			</div>
			<div class="col-sm-5 mt-5">
				<h2>My Portal Sign In</h2>		
				<h5>Not yet Joined? <a href="/resourcefull/register">Register</a></h5>
				<div class="signInForm">
					<c:if test="${loginError != null}">
		        		<c:out value="${loginError}"></c:out>
		    		</c:if>
				   	<form method="post" action="/resourcefull/sign-in" class="form">
				       	<p>
				       	 	<label class="col-4 col-form-label pl-0" for="username">Username</label>
				           	<input class="form-control col-5"  type="text" id="username" name="username"/>
				       	</p>
				        <p>
				           	<label class="col-4 col-form-label pl-0" for="password">Password</label>
				           	<input class="form-control col-5" type="password" id="password" name="password"/>
				       	</p>  	
				        <a href="" class="forgotPassword">Forgot password?</a>	
				        <br><br>
				        <div class="form-check">
		  					<input class="form-check-input" type="checkbox" value="" id="defaultCheck">
		  					<label class="form-check-label ml-2" for="defaultCheck1">Remember Me</label>
						</div>
				        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				       	<input class="mt-4 btn btn-outline btn-sm signinbutton" type="submit" value="Sign In"/>
				   	 </form>
			    </div>
			</div>
		</div> <!-- End of Body -->
		
		<div class="footer row">
			<div class="line mt-5"></div>
			<div class="col-md-3"></div> 
			<div class="col-sm-5 mt-3">
				<p>We use session cookies to offer you a better browsing experience and to analyze our traffic. For more information on cookies please see our Privacy Policy.</p>
			</div>
			<div class="col-sm-2">
				<a class="btn btn-outline btn-sm acceptbutton ml-3 mt-3" href="">Accept</a>
			</div>
			<div class="col-md-3"></div> 
			<div class="line"></div>
		</div> <!-- End of Footer -->
		
	</div> <!-- End of Container -->
</body>
</html>