<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="CssForNavBar.css">
<link rel="stylesheet" href="SideNavBar.css">
<title>Welcome to CMS</title>
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
</head>
<body style="text-align: center; background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1200px-Good_Food_Display_-_NCI_Visuals_Online.jpg'); 
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
  <!-- <a href="#">Update Stock</a> -->
  <a href="#">Update Menu</a>
  <a href="Stock_TakeOut.jsp">Take out stock</a>


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
<br>
<div  style="background-image: url('https://media.istockphoto.com/photos/triangular-abstract-background-picture-id624878906?k=6&m=624878906&s=612x612&w=0&h=uDcbe038RdtiiHchahAbwOYfx0bkPVLfsn0NOjA0gTM='); 
 background-repeat: no-repeat;
    background-size: cover;position: absolute;top: 35%;left: 10%"><h1>Welcome to Cafetaria Management System</h1></div>

	

</body>
</html>