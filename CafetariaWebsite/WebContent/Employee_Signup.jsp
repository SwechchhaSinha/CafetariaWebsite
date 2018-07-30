<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href=".\signup.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Creepster' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="text-align: center; background-image: url('https://images.cdn4.stockunlimited.net/preview1300/seamless-fast-food-pattern-background_1265398.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;
    font:#f4bc42">
<div style="background-color: #f4bc42;font-family: 'Creepster'">
<h1>Sign Up</h1>
<p>Please fill in this form to create an account.</p>
</div>
<div>

<form class="container" method="post" style="border:1px solid #ccc;background-color: #f4bc42" action="./InputServlet">
Enter Your EIN :<br><input type="text" name="ein" placeholder="Enter EIN"  required><br>
Enter Your First Name :<br><input type="text" name="name" placeholder="Enter First Name"  required><br>
Do you want to opt for food :<br><input type="radio" name="opt_status" value="Y">Yes<br>
									 <input type="radio" name="opt_status" value="N">No<br>
Enter Your Password :<br><input type="password" name="password" placeholder="Enter Password"  required><br>
<input type="submit" value="Submit">
</form>


</div>
</body>
</html>