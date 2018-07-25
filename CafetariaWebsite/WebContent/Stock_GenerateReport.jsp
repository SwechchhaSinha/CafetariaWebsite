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
<div id="enterDate">
	<form action="./StockGenerateReport">
	  Enter date in yyyy-mm-dd:
	  <input type="text" name="transactionDate">
	  <button onclick="generate()" type="submit">Submit</button>
	</form>
</div>

<div id="generated">

</div>
<script>
function generate() {
    document.getElementById("generated").innerHTML = "Report generated successfully.";
}
</script>
	
</body>
</html>