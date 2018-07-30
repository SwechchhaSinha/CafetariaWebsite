<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./SideNavBar.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<title>Today's Menu</title>
<style type="text/css">
* {
    margin: 0;
    padding: 0;
  	-moz-box-sizing: border-box;
		-o-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
		 font-family: 'Berkshire Swash';font-size: 30px;
	}

	body {
		width: 100%;
		height: 100%;
		
		font-size: 13px;
		text-align: center;
		text-align: center; background-image: url('restaurant-food-frame-with-rustic-wood-background-free.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;
		overflow: hidden;
	}

	ul {
		margin: 30px auto;
		text-align: center;
	}

	li {
		list-style: none;
		position: relative;
		display: inline-block;
		width: 150px;
		height: 150px;
		margin:10px;
		 font-family: 'Berkshire Swash';font-size: 30px;
	}

	@-moz-keyframes rotate {
		0% {transform: rotate(0deg);}
		100% {transform: rotate(-360deg);}
	}

	@-webkit-keyframes rotate {
		0% {transform: rotate(0deg);}
		100% {transform: rotate(-360deg);}
	}

	@-o-keyframes rotate {
		0% {transform: rotate(0deg);}
		100% {transform: rotate(-360deg);}
	}

	@keyframes rotate {
		0% {transform: rotate(0deg);}
		100% {transform: rotate(-360deg);}
	}

	.round {
		display: block;
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		padding-top: 30px;		
		text-decoration: none;		
		text-align: center;
		font-size: 25px;		
		text-shadow: 0 1px 0 rgba(255,255,255,.7);
		letter-spacing: -.065em;
		font-family: "Hammersmith One", sans-serif;		
		-webkit-transition: all .25s ease-in-out;
		-o-transition: all .25s ease-in-out;
		-moz-transition: all .25s ease-in-out;
		transition: all .25s ease-in-out;
		box-shadow: 2px 2px 7px rgba(0,0,0,.2);
		border-radius: 300px;
		z-index: 1;
		border-width: 4px;
		border-style: solid;
	}

	.round:hover {
		width: 130%;
		height: 130%;
		left: -15%;
		top: -15%;
		font-size: 33px;
		padding-top: 38px;
		-webkit-box-shadow: 5px 5px 10px rgba(0,0,0,.3);
		-o-box-shadow: 5px 5px 10px rgba(0,0,0,.3);
		-moz-box-shadow: 5px 5px 10px rgba(0,0,0,.3);
		box-shadow: 5px 5px 10px rgba(0,0,0,.3);
		z-index: 2;
		border-size: 10px;
		-webkit-transform: rotate(-360deg);
		-moz-transform: rotate(-360deg);
		-o-transform: rotate(-360deg);
		transform: rotate(-360deg);
	}

	a.red {
		background-color: #f4bc42;
		color: black;
		border-color: rgba(133,32,28,.2);
	}

	a.red:hover {
		color: rgba(239,57,50,1);
	}

	a.green {
		background-color: #f4bc42;
		color: black;
		border-color: rgba(0,63,71,.2);
	}

	a.green:hover {
		color: rgba(1,151,171,1);
	}

	a.yellow {
		background-color: #f4bc42;
		color: black;
		border-color: rgba(153,38,0,.2);
	}

	a.yellow:hover {
		color: rgba(252,227,1,1);
	}

	.round span.round {
		display: block;
		opacity: 0;
		-webkit-transition: all .5s ease-in-out;
		-moz-transition: all .5s ease-in-out;
		-o-transition: all .5s ease-in-out;
		transition: all .5s ease-in-out;
		font-size: 1px;
		border: none;
		padding: 40% 20% 0 20%;
		color: #fff;
	}

	.round span:hover {
		opacity: .85;
		font-size: 20px;
		-webkit-text-shadow: 0 1px 1px rgba(0,0,0,.5);
		-moz-text-shadow: 0 1px 1px rgba(0,0,0,.5);
		-o-text-shadow: 0 1px 1px rgba(0,0,0,.5);
		text-shadow: 0 1px 1px rgba(0,0,0,.5);	
	}

	.green span {
		background: rgba(0,63,71,.7);		
	}

	.red span {
		background: rgba(133,32,28,.7);		
	}

	.yellow span {
		background: rgba(161,145,0,.7);	

	}
</style>
</head>
<body style="marin:auto; text-align: center;">
<x:if test="${sessionScope.ein == null}">
    <script>alert("Please login to continue!!");
    location.href='Home.jsp';
    </script>
</x:if>
<div id="navbar">
  <a href="./Logout">Logout</a>
  <a style="float:left"><span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span></a> 
  
</div>
<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="./EmployeeJsp.jsp">Home</a> <a href="./DisplayMenuController">Daily
			Menu</a> <a href="./MonthlyExpenseController">Monthy Expense</a> <a
			href="./AddOns">Choose Add Ons</a> <a href="./OptFood">Opt for
			food</a>
			</div>
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    document.body.style.backgroundColor = "white";
}
</script>

<ul style="font-family: 'Berkshire Swash'; font-size: 40px;">
  <li><a href="#" class="round green"><p>${menu.menuArrayList[0]}</p><span class="round">YUMMYYY!!!</span></a></li>
  <li><a href="#" class="round green"><p>${menu.menuArrayList[1]}</p><span class="round">YUMMYYY!!!</span></a></li>
	<li><a href="#" class="round green"><p>${menu.menuArrayList[2]}</p><span class="round">YUMMYYY!!!</span></a></li>
<br><li><a href="#" class="round red"><p>${menu.menuArrayList[3]}</p><span class="round">YUMMYYY!!!</span></a></li>
  <li><a href="#" class="round red"><p>${menu.menuArrayList[4]}</p><span class="round">YUMMYYY!!!</span></a></li>
	<li><a href="#" class="round red"><p>${menu.menuArrayList[5]}</p><span class="round">YUMMYYY!!!</span></a></li>
<br><li><a href="#" class="round yellow"><p>${menu.menuArrayList[6]}</p><span class="round">YUMMYYY!!!</span></a></li>
  <li><a href="#" class="round yellow"><p>${menu.menuArrayList[7]}</p><span class="round">YUMMYYY!!! </span></a></li>
	
</ul> 
</body>
</html>