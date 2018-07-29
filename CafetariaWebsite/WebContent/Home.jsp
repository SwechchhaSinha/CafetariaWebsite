<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hello</title>
<style type="text/css">
body, html {
  width: 100%;
  height: 100%;
  margin: 0;
  background-color: black;
  overflow: hidden;
}

.container {
  width: 100%;
  height: 100%;

  
}

.leftpane {
    width: 25%;
    height: 100%;
    float: left;
    background-color: rosybrown;
    border-collapse: collapse;
}

.middlepane {
    width: 50%;
    height: 100%;
    float: left;
    background-color: royalblue;
    border-collapse: collapse;
}

.rightpane {
  width: 25%;
  height: 100%;
  position: relative;
  float: right;
  background-color: rosybrown;
  border-collapse: collapse;
}

.toppane {
  width: 100%;
  height: 50px;
  border-collapse: collapse;
  background-color: black;
}
</style>
</head>
<body>
<div class="container">
  <div class="toppane">
  <h1 style="color: white;text-align: center;">Welcome to Rahul's Cafe!!!</h1>
  </div>
  <div class="leftpane">
  <div class="leftpane" style="height: 15%;width: 100%"></div>
    <a href="Employee_Signup.jsp"><img alt="sign up" src="./sign-up-here.png" style="width: 100%;height: 60%"></a>
    
    </div>
  <div class="middlepane">
  <img alt="logo" src="https://media.giphy.com/media/xjIlOkfEw6JjB0Xs6U/giphy.gif" style="height: 90%;width: 100%">
  </div>
  <div class="rightpane">
  <div class="rightpane" style="height: 12%;width: 100%"></div>
 <a href="EmployeeLogin.jsp"> <img alt="sign up" src="./1370146_orig.png" style="width: 100%;height: 70%"></a>
  
  </div>
   
</div>

</body>
</html>