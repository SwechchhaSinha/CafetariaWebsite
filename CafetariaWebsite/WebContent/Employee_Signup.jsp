<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href=".\signup.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="marin:auto; text-align: center;">
<div>
<h1>Sign Up</h1>
<p>Please fill in this form to create an account.</p>
</div>
<div>
<form class="container" method="post" style="border:1px solid #ccc" action="./InputServlet">
Enter Your EIN :<br><br><input type="text" name="ein" placeholder="Enter EIN"  required><br><br>
Enter Your First Name :<br><br><input type="text" name="name" placeholder="Enter First Name"  required><br><br>
Do you want to opt for food :<br><br><input type="radio" name="opt_status" value="Y">Yes<br><br>
									 <input type="radio" name="opt_status" value="N">No<br><br>
Enter Your Password :<br><br><input type="password" name="password" placeholder="Enter Password"  required><br><br>
<input type="submit" value="Submit">
</form>

</div>
</body>
</html>