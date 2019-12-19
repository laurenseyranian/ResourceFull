<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/home.css">
	<link href="https://fonts.googleapis.com/css?family=Baskervville|Roboto+Mono&display=swap" rel="stylesheet">
	
<title>Resourcefull - Logged In Home Page</title>
</head>

<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="navbar movenavbar"><a class="text-light" href="/resourcefull/learn/more">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learn/more">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learn/more">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learn/more">LEARN MORE</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learn/more">LEARN MORE</a></div>
	</div>
	
	<p class="text-center welcome">Welcome <c:out value="${currentUser.first_name}"></c:out> <c:out value="${currentUser.last_name}"></c:out>!</p>
	<div class="middleOfPage row">
		<div class="col-6">			
			<table class="table ml-3">
					<thead class="thead-dark">
						<tr>
							<th scope="col" class="lead">Neighborhood</th>
							<th scope="col" class="lead"># of Neighbors</th>
							<th scope="col" class="lead"># of Pets</th>
						</tr>
					</thead>
	
					<tbody>
					<c:forEach items="${communities}" var="community">
						<tr>
							<td class="tableText"><a href="/resourcefull/neighborhood/${community.id}"><c:out value="${community.name}"/></a></td>
							<td class="tableText"><c:out value="${community.residents}"/></td>
							<td class="tableText"><c:out value="${community.pets}"/></td>
								<%-- <td class="lead"><c:out value="${community.hygienekits_FilledAt}"/></td> --%> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a class="btn btn-outline-secondary btn-lg ml-3" href="/resourcefull/add/neighborhood">Add a Neighborhood</a>
		</div>
				
		<div class="col-6 mapApi">
			<img src="/img/map.png" alt="error" class="map">
		</div>
			<!-- end of row -->
	</div>
	
	
	

	


</body>
</html>