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
<title>Want to Opt Food</title>
</head>
<body >

	<div id="navbar">
		<a href="javascript:void(0)">Logout</a> <a style="float: left"><span
			style="font-size: 25px; cursor: pointer" onclick="openNav()">&#9776;</span></a>

	</div>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="./EmployeeJsp.jsp">Home</a> <a href="./DisplayMenuController">Daily
			Menu</a> <a href="./MonthlyExpenseController">Monthy Expense</a> <a
			href="./AddOn.jsp">Choose Add Ons</a> <a href="./OptFood">Opt for
			food</a>
	</div>
	<div id="main" style="marin:auto; text-align: center;">
		<x:choose>
			<x:when
				test="${sessionScope.optStatus=='Already Subscribed for the food services' }">
				<x:out value="${sessionScope.optStatus}" />
				<a href="<x:url value="./AddOn.jsp"/>">Click here to choose your
					Add Ons</a>
			</x:when>
			<x:otherwise>
				<p>Today's Menu is :</p>
				<br>
				<br>
				<x:out value="${menu}" />
				<br>
				<br>
				<p>Do you want to opt for food??</p>
				<br>
				<br>
				<form method="post" action="./OptingFood">
					<input type="radio" value="Y" name="optingStatus">Yes<br>
					<br> <input type="radio" value="N" name="optingStatus">No<br>
					<br> <input type="submit" value="Submit">
				</form>
			</x:otherwise>
		</x:choose>
	</div>
</body>
</html>