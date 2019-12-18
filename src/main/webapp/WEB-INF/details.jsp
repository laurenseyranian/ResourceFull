<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<title>ResourceFull</title>
</head>
<body>
	<div class="container">




	
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