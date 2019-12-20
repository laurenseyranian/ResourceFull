<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/create.css">
	<link href="https://fonts.googleapis.com/css?family=Baskervville|Roboto+Mono&display=swap" rel="stylesheet">

	<title>ResourceFull - Add</title>
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
	<div class="middleOfPage">
		<p class="add">Add A Neighborhood</p>
		
		<div class="row">
			<div class="col-5 ml-3">
				<div class="addBox">
					<form:form action="/community/process" method="post" modelAttribute="community">
						<p>
							<form:label path="name" class=" col-form-label">Neighborhood: </form:label>
							<form:select path="name">
								<c:forEach items="${names}" var="name">
									<form:option value="${name}">${name}</form:option>
								</c:forEach>
							</form:select>
						</p>
			
						<p>
							<form:label path="location" class="lead col-form-label">Location (nearest intersection, city, state): </form:label>
							<form:input path="location" type="text" class="form-control col-11" />
						</p>
						
						<p>
							<form:label path="residents" class="lead col-form-label"># of Residents: </form:label>
							<form:input path="residents" type="number" class="form-control col-11" />
						</p>
			
						<p>
							<form:label path="pets" class="lead col-form-label"># of Pets: </form:label>
							<form:input path="pets" type="number" class="form-control col-11" />
						</p>
			
						<p>
							<form:label path="liaisoncontactname" class="lead col-form-label">Contact Name: </form:label>
							<form:input path="liaisoncontactname" type="text" class="form-control col-11" />
						</p>
			
						<p>
							<form:label path="liaisoncontactnumber" class="lead col-form-label">Contact Phone: </form:label>
							<form:input path="liaisoncontactnumber" type="text" class="form-control col-11" />
						</p>
			
						<input class="btn btn-outline-secondary mt-3" type="submit"
							value="Submit" />
					<a class="btn btn-outline-danger mt-3" href="/resourcefull/home">Cancel</a>
					</form:form>
				</div>
			</div>
			<div class="col-5 mapApi">
				<img src="/img/quote.jpg" alt="error" class="quote">
			</div>
		
	<!-- end of row -->
		</div>
	</div>
</body>
</html>