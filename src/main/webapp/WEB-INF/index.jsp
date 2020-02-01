<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link
	href="https://fonts.googleapis.com/css?family=Baskervville|Roboto+Mono&display=swap"
	rel="stylesheet">

<title>ResourceFull - Index</title>

</head>

<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="navbar movenavbar">
			<a class="text-light" href="/resourcefull/home">HOME</a>
		</div>
		<div class="navbar">
			<a class="text-light" href="/resourcefull/learnmore">GET INVOLVED</a>
		</div>
		<div class="navbar">
			<a class="text-light" href="/resourcefull/blog">BLOG</a>
		</div>
		<div class="navbar">
			<a class="text-light" href="/resourcefull/learnmore">CONTACT</a>
		</div>
		<div class="navbar">
			<a class="text-light" href="/resourcefull/signup">SIGN-UP</a>
		</div>
		<div class="navbar">
			<a class="text-light" href="/resourcefull/login">LOGIN</a>
		</div>
		<%-- 		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div> --%>
	</div>

	<div class="middleOfPage">
		<p class="question">Want to help your unhoused neighbors, but not
			sure how?</p>

		<div id="paragraph">
			<p class="paragraph">Join ResourceFull to connect and share your
				resources with your neighbors! Sign-up to view locations, resource
				need lists, and message boards for unhoused neighbors in your area!
				One person can't solve the problem, but together we can make a
				difference.</p>
		</div>

		<div class="signup">
			<a class="btn btn-outline-secondary btn-lg"
				href="/resourcefull/signup">SIGN-UP</a>
		</div>
	</div>

	<div class="wishlistItems">
		<p class="wishlistTitle">Curbside Communities are in need of these
			items:</p>

		<div class="blackLine"></div>

		<div id="wishlist">
			<div class="wishlistBox">
				<img src="/img/water.jpg" alt="error" class="water">
				<p class="itemName">Water</p>
				<p class="itemInfo">California had about 130,000 homeless people
					as of January 2018 according to the Water Foundation Organization.
					That’s about a quarter of the nation’s entire homeless population.
					More than 70% of homeless people lack access to clean drinking
					water, making it a constant a daily struggle.</p>
				<a class="waterButton"
					href="https://www.watereducation.org/western-water/can-providing-bathrooms-homeless-protect-californias-water-quality"
					target="_blank">LEARN MORE</a>
			</div>

			<div class="wishlistBox">
				<img src="/img/food.jpg" alt="error" class="food">
				<p class="itemName">Food</p>
				<p class="itemInfo">Last year, 6.4 million households skipped
					meals multiple times and ate much less than they were used to
					according to the National Homeless Organization. That means that
					5.4% of the nation experienced abnormal eating practices such as
					making meals last for hours, or binge eating.</p>
				<a class="foodButton"
					href="https://nationalhomeless.org/campaigns/food-sharing/"
					target="_blank">LEARN MORE</a>
			</div>

			<div class="wishlistBox">
				<img src="/img/kit.gif" alt="error" class="kit">
				<p class="itemName">Hygiene and First-Aid Kits</p>
				<p class="itemInfo">Persons experiencing homelessness in the
					United States experience significant barriers to self-care and
					personal hygiene, including limited access to clean showers,
					laundry and hand washing facilities according to the National
					Homeless Organization. A crucial way to keep neighbors safe is to
					provide harm reduction supplies for first aid.</p>
				<a class="kitButton"
					href="https://www.homelesshub.ca/about-homelessness/substance-use-addiction/harm-reduction"
					target="_blank">LEARN MORE</a>
			</div>
		</div>
		<div class="DevTeam">
			<p class="about mt-5">ResourceFull was built by a team of
				developers who are passionate about using technology for social
				justice. This pilot version allows users to create curbside
				communities as a map pin, resource needs table, and a message board
				in the city of Oakland. Future iterations will allow users to record
				and print donations given, add more resource needs to the individual
				community table, and get directions to community sites across the
				region. It is our hope that ResourceFull's easily shared and updated
				information will create more connected and compassionate communities
				across the San Francisco Bay Area in the very near future.</p>
		</div>
		<div>
			<ul style="list-style-type: none" class="nav">
				<li class="nav-item"><a class="nav-link active" href="https://www.linkedin.com/in/jamielynnramirez/">Jamie
				Ramirez</a>
				</li>
				<li class="nav-item"><a class="nav-link active" href="https://www.linkedin.com/in/lauren-seyranian-4b0a9a17b/">Lauren
				Seyranian</a>
				</li>
				<li class="nav-item"><a class="nav-link active" href="https://www.linkedin.com/in/lindsey-vaughn-271706137/">Lindsey
				Vaughn</a>
				</li>
				<li class="nav-item"><a class="nav-link active" href="https://www.linkedin.com/in/cfhughes/">Chris
				Hughes</a>
				</li>
			</ul>
		</div>

	</div>


</body>
</html>