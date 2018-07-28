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

<title>Select Add Ons</title>
</head>
<body style="text-align:center;">
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
	<div id="main">
		<h1>Available Add Ons Stock :</h1>
		<h1>Select Your Add Ons</h1>
		<table border="1" style="margin:auto;">
			<tr>
				<th>Add On ID</th>
				<th>Add On Name</th>
				<th>Remaining Quantity</th>
				<th>Price per Unit</th>
				<x:forEach var="addOn" items="${addOn}">
					<tr>
						<td><x:out value="${addOn.addOnId }" /></td>
						<td><x:out value="${addOn.addOnName }" /></td>
						<td><x:out value="${addOn.addOnQuantity }" /></td>
						<td><x:out value="${addOn.addOnPrice }" /></td>
					</tr>
				</x:forEach>
		</table>
		<p><b>After clicking add money will get deducted from your aaccount and can not be rollback</b></p>
		<form method="post" action="./AddOnAddController">
			<select name="AddOnChoice">
				<x:forEach var="addOn" items="${addOn}">
					<option value="${addOn.addOnId}">${addOn.addOnName}</option>
				</x:forEach>
			</select> <br> <br>Enter Quantity :<br> <input type="text"
				name="quantity"><br> <br> <input type="submit"
				value="Add">
		</form>
	</div>
	<script>
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
	</script>


</body>
</html>