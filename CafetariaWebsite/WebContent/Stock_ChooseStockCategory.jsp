<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="stock" %> 
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="CssForNavBar.css">
<link rel="stylesheet" href="SideNavBar.css">
<title>Welcome to CMS</title>
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="text-align: center; background-image: url('https://images.cdn4.stockunlimited.net/preview1300/seamless-fast-food-pattern-background_1265398.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 20px;">
<stock:if test="${sessionScope.ein == null}">
    <script>alert("Please login to continue!!");
    location.href='Home.jsp';
    </script>
</stock:if>
<div id="navbar">
  <a class="active" href="./Logout">Logout</a>
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
  <button onclick="functionClick()">Take out Stock!!</button>
  <a href="Stock_TakeOut.jsp">Take out stock</a>

</div>
<div id="enterDate" style="background-color:#f4bc42; width: 30%;position: absolute;top: 20%;left: 35%">

<form action="./StockByCategoryResult">
<br><h1>Choose Category :</h1><br>
<select name="category">
<stock:forEach var="cat" items="${sessionScope.StockCategory}" >
<option value="${cat }">
${cat}
</option>
</stock:forEach>
</select>
<br><br><br>
<input class="btn btn-primary" type="submit" value="View List">
<br>
</form>
<br>
  <button type="button" id="click" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="display: none">Open Modal</button>
</div>
<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="background-color: teal">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"">Enter the following details!!</h4>
        </div>
        <div class="modal-body" style="background-color: #f4bc42">
          <div id="TakeOutStock" >
	<form action="./StockTakeOut">
	  Enter Food Id: <br><input type="text" name="foodId"><br>
	  Enter Quantity: <br><input type="text" name="quantity"><br>
	  <br>
	  <input type="Submit" value="Take out">
	  <br>
	</form>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
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
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}
function functionClick()
{
	document.getElementById("mySidenav").style.width = "0";
	
	document.getElementById("click").click();
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