<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
	<title>ResourceFull</title>

<title>ResourceFull</title>
</head>
<body>
	<div class="container">
		<form:form action="/community/process" method="post" modelAttribute="community">			
			<p>
				<form:label path="name" class="col-sm-1 col-form-label">Neighborhood:</form:label>
				<form:select path="name">
					<c:forEach items="${names}" var="name">
						<form:option value="${name}">${name}</form:option>
					</c:forEach>
				</form:select>
			</p>
			<p>
				<form:label path="street" class="lead col-form-label">Street: </form:label>
				<form:input path="street" type="text" class="form-control" />
			</p>

			<p>
				<form:label path="city" class="lead col-form-label">City:</form:label>
				<form:input path="city" type="text" class="form-control" />
				<p>
			
			<p>
				<form:label path="state" class="lead col-form-label">State: </form:label>
				<form:input path="state" type="text" class="form-control" />
			</p>

			<p>
				<form:label path="residents" class="lead col-form-label"># of Residents: </form:label>
				<form:input path="residents" type="number" class="form-control" />
			</p>

			<p>
				<form:label path="pets" class="lead col-form-label"># of Pets: </form:label>
				<form:input path="pets" type="number" class="form-control" />
			</p>
			
			<input class="btn btn-outline-success mt-3" type="submit"
				value="Submit" />
			<a class="btn btn-outline-danger mt-3" href="/events">Cancel</a>
		</form:form>
	
	
	
	
	
<!-- end of container --></div>

</body>
</html>