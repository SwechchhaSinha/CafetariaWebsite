<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href=".\signup.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="text-align: center; background-image: url('https://images.cdn4.stockunlimited.net/preview1300/seamless-fast-food-pattern-background_1265398.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;">
<div style="background-color:#f4bc42; width: 40%;position: absolute;top: 10%;left: 30%" ><form method="post" action="./LoginController">
	<h2>Enter Your EIN : </h2><input type="text" name="username"><br>
	<h2>Enter Your Password: </h2><input type="password" name="password"><br>
	<br><input type="submit" name="Login" value="Login" class="btn btn-success"><br><br>
</form>
</div>
</body>
</html>