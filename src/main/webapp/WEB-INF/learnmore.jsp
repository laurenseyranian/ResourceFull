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
	
		<p class="stat text-center">Alameda Country Health Care for the Homeless recently reported that "At least 28,000 Alameda County residents over 1.6% of the County population will experience homelessness this year."</p>
		
		
		
		<div class="row">
			<div class="col">
				<p class="help">How to Get Involved:</p>
				<p class="steps">Step 1: Create an account to find out where and how to share resources.</p>
                <p class="steps">Step 2: Gather food, water, and hygiene kits for your neighbors.</p>
                <p class="steps">Step 3: Review the weekly wishlist or resource needs list of your neighbors.</p>
           	    <p class="steps">Step 4: Use Resourcefull to make your delivery and track your resource sharing!</p>
                <p class="steps">Step 5: Leave a comment on the message board to share your experience with other community members!</p>
                
            	<h2 class="stat text-center mb-10 need">Wishlist Items:</h2>
            	<br>
            	<br>
            	<ul class="stat text-center mt-5" style="list-style-type:none">
                	<li><img src="/img/water.jpg" alt="cases of bottled water" class="water"></li>
                	<li class="itemInfo">Clean water is hard to get when you live on the streets. Weekly deliveries of 4 gallon per person will help your neighbor cook, clean and stay hydrated. We recommend bringing large water containers to cut down on waste and empower your neighbors to reuse the containers.</li>
				    <li><img src="/img/food.jpg" alt="basket of healthy food" class="food"></li>
				    <li class="itemInfo">Hunger is a major issue for those living outside.  A person consumes from 3-5 lbs of food each day, making the weekly amount 21 pounds per week. Your neighbors may suffer from dental pain, so bring food that is easy to chew and flavorful.</li>
      				<li><img src="/img/kit.gif" alt="sharps box" class="kit"></li>
      				<li class="itemInfo">Hygiene is essential for safety and resiliency. Our unsheltered neighbors require a range of supplies that are easy to bring, such as travel size shampoo, soap, dental care, trash bags, and harm reduction such as sharps containers and sterilizing supplies. We recommend packing gallon size ziploc bags with anything and everything that you yourself would bring for hygiene and first aid to bring to your neighbors!</li>
				</ul>	
				
			</div>
			<div class="stat text-center">
				<img src="/img/donate3.jpg" alt="error" class="donate">
			</div>
		</div>
	</div>
		
</body>
</html>