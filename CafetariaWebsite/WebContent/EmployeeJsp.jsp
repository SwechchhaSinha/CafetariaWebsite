<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css" href="<x:url value="./SideNavBar.css"/>">
 
<title>Cafeteria</title>
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
  <a href="./DisplayMenuController">Daily Menu</a>
  <a href="./MonthlyExpenseController">Monthy Expense</a>
  <a href="./AddOns">Choose Add Ons</a>
  <a href="./OptFood">Opt for food</a>
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
<div id="main" style="text-align:center;">
<h1><i>Welcome To Our Cafeteria Management System!!!</i></h1>
<h2><b><i> To Eat is Human and to Eat Well is DIVINE.</i></b></h2>
</div>
</body>
</html>