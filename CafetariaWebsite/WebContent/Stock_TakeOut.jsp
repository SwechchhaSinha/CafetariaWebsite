<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %> 
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="CssForNavBar.css">
<link rel="stylesheet" href="SideNavBar.css">
<title>Welcome to CMS</title>
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<style type="text/css">
table {
    font-family: Sofia;
    border-collapse: collapse;
    width: 100%;
    left: 20%;
    top: 20%
}

td, th {
    border: 5px solid black;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color:#41f4c4 ;
}
tr:nth-child(odd) {
    background-color: #3c9b82;
}
</style>
</head>
<body style="text-align: center; background-image: url('https://images.cdn4.stockunlimited.net/preview1300/seamless-fast-food-pattern-background_1265398.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;">

<div id="navbar">
  <a class="active" href="javascript:void(0)">Logout</a>
  <a style="float:left"><span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span></a>
  <!-- <a href="javascript:void(0)">Logout</a> -->
  
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 
  <button class="dropdown-btn">View Stock 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="./AllStock">All</a>
    <a href="./StockByCategory">Category wise</a>
    
  </div>
  <a href="Stock_GenerateReport.jsp">Generate Report</a>

  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 
  <button class="dropdown-btn">Update Stock 
    <i class="fa fa-caret-down"></i>
  </button>
 <div class="dropdown-container">
	    <a href="./Stock_Insert.jsp">Insert</a>
	    <a href="./Stock_Update.jsp">Update</a>
	    <a href="./Stock_Delete.jsp">Delete</a>
</div>
  <a href="#">Update Menu</a>
 <a href="ViewAllStockForStockTakeOut">Take out stock</a>


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
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
</script>
</div>

<div style="position:relative;top: 15%;left: 25%;width: 50%">
<table>
 <tr>
    <th>STOCK ID</th>
    <th>STOCK NAME</th>
    <th>CATEGORY</th>
    <th>QUANTITY</th>
  </tr>
<x:forEach var="food" items="${sessionScope.StockForTakeOut}" >
<tr>
<td><x:out value="${food.f_id }"></x:out></td>
<td><x:out value="${food.f_name }"></x:out></td>
<td><x:out value="${food.category }"></x:out></td>
<td><x:out value="${food.quantity }"></x:out></td>
</tr>

</x:forEach>
</table>
</div>
<br>

<div style="background-color:#3c9b82; width: 40%;position: relative;top: 10%;left: 30%" >
	
	<form action="./StockTakeOut">
	  Enter Food Id: <input type="text" name="foodId" required ><br><br>
	  Enter Quantity: <input type="text" name="quantity" required ><br><br>
	  <input type="Submit">
	</form>
</div>
</body>
</html>