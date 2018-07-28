<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./SideNavBar.css"/>">
<title>Add More or Submit</title>
</head>
<body style="marin:auto; text-align: center;">



	<div id="navbar">
		<a href="javascript:void(0)">Logout</a> <a style="float: left"><span
			style="font-size: 25px; cursor: pointer" onclick="openNav()">&#9776;</span></a>

	</div>
	<!--  <div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="./EmployeeJsp.jsp">Home</a> <a href="./DisplayMenuController">Daily
			Menu</a> <a href="./MonthlyExpenseController">Monthy Expense</a> <a
			href="./AddOn.jsp">Choose Add Ons</a> <a href="./OptFood">Opt for
			food</a>
	</div>
-->


	<div id="main" style="text-align: center;">
		<p>Click on submit if you do not want any more add on</p>
		<a href="<x:url value="./Submit.jsp"/>">Submit</a>

		<p>To add more Add Ons</p>
		<a href="<x:url value="./AddOn.jsp"/>">More Add Ons</a>
	</div>

	<!--  <script>
		window.onscroll = function() {
			myFunction()
		};

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
	</script>-->
</body>
</html>