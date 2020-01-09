<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Baskervville|Roboto+Mono&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 	<link rel="stylesheet" type="text/css" href="/css/learnmore.css">
 	
	<title>Resourcefull - Learn More</title>
</head>

<body>
	<div class="topOfPage">
		<img src="/img/logo.svg" alt="error" class="logo">
		<p class="title text-center">Keeping Neighbors Safe Where They Are</p>
		<div class="whiteLine"></div>
		<div class="navbar movenavbar"><a class="text-light" href="/resourcefull/home">HOME</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">GET INVOLVED</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull">ABOUT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/blog">BLOG</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/learnmore">CONTACT</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/signup">SIGN-UP</a></div>
		<div class="navbar"><a class="text-light" href="/resourcefull/login">LOGIN</a></div>
		<div class="navbar">
			<form id="logoutForm" method="POST" action="/logout">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        		<input class="btn btn-link text-light" type="submit" value="LOGOUT" />
    		</form>
    	</div>
	</div>
	
	<div class="middleOfPage">
	
		<p class="stat text-center">"Alameda Country Health Care for the Homeless recently reported that "At least 28,000 Alameda County residents over 1.6% of the County population will experience homelessness this year."</p>
				
		<p class="learnmore">Learn More About How To Get Involved in Helping Your Neighbors</p>
		
		
		<p class="mission">Our mission is to empower housed people in all neighborhoods by connecting them with their unhoused neighbors and giving them the opportunity to share resources with their unsheltered neighbors.</p>
		
		<div class="row">
			<div class="col-6">
				<p class="help">How to Get Involved:</p>
				<p class="steps">Step 1: Create an account to gain access to neighbors in need near you.</p>
                <p class="steps">Step 2: Gather food, water, and hygiene kits for your neighbors.</p>
                <p class="steps">Step 3: Review the weekly resource needs of your neighbors.</p>
           	    <p class="steps">Step 4: Make your delivery to your neighbors!</p>
                <p class="steps">Step 5: Use Resourcefull to track deliveries to your neighbors.</p>
                
            	<p class="need">Wishlist Items:</p>
                <img src="/img/water.jpg" alt="error" class="water">
                <p class="itemInfo">Clean water is hard to get when you live on the streets. Weekly deliveries of 4 gallon per person will help your neighbor cook, clean and stay hydrated. We recommend bringing large water containers to cut down on waste and empower your neighbors to reuse the containers.</p>
                <img src="/img/food.jpg" alt="error" class="water">
                <p class="itemInfo">Hunger is a major issue for those living outside.  A person consumes from 3-5 lbs of food each day, making the weekly amount 21 pounds per week. Your neighbors may suffer from dental pain, so bring food that is easy to chew and flavorful.</p>
                <img src="/img/kit.gif" alt="error" class="water">
				<p class="itemInfo">Hygiene is essential for safety and resiliency. Our unsheltered neighbors require a range of supplies that are easy to bring, such as travel size shampoo, soap, dental care, trash bags, and harm reduction such as sharps containers and sterilizing supplies. We recommend packing bags with anything and everything that you yourself would bring for hygiene and first aid to bring to your neighbors!</p>
				
			</div>
			<div class="col-6 pics">
				<img src="/img/donate1.jpg" alt="error" class="donate">
				<img src="/img/donate2.jpg" alt="error" class="donate">
				<img src="/img/donate3.jpg" alt="error" class="donate">
			</div>
		</div>
	</div>
		
</body>
</html>