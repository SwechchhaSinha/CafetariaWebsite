<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="stock" %> 
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
   <button class="dropdown-btn">Update Stock 
    <i class="fa fa-caret-down"></i>
  </button>
 <div class="dropdown-container">
	    <a href="./Stock_Insert.jsp">Insert</a>
	    <a href="./Stock_Update.jsp">Update</a>
	    <a href="./Stock_Delete.jsp">Delete</a>
</div>
  <!-- <a href="#">Update Stock</a> -->
  <a href="#">Update Menu</a>
  <a href="Stock_TakeOut.jsp">Take out stock</a>

</div>


<form action="./StockByCategoryResult">
Choose Category :
<select name="category">
<stock:forEach var="cat" items="${sessionScope.StockCategory}" >
<option value="${cat }">
${cat}
</option>
</stock:forEach>
</select>
<input type="submit" value="View List">
</form>


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


</body>
</html>