<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="CssForNavBar.css">
<link rel="stylesheet" href="SideNavBar.css">
<title>Welcome to CMS</title>
</head>
<body>

<div id="navbar">
  <a class="active" href="javascript:void(0)">Logout</a>
  <a style="float:left"><span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span></a>
  <!-- <a href="javascript:void(0)">Logout</a> -->
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
</script>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">View Stock</a>
  <a href="Stock_GenerateReport.jsp">Generate Report</a>
  <a href="#">Update Stock</a>
  <a href="#">Update Menu</a>
  <a href="#">Take out stock</a>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</div>
<br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
${sessionScope.msg}
<!-- <a href="C:\Users\ve00ym016\report_" target="_blank">Click here to Download Report</a>
<a href="file:///C:\Users\ve00ym016\">View file</a>  -->
<a href="<c:out value="C:\Users\ve00ym016\report_${sessionScope.localDate}"/>" target="_blank">Click here to Download Report </a>

</body>
</html>