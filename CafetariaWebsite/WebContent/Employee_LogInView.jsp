<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="margin:auto; text-align: center;">

<h1 >Error Wrong Login Credentials</h1>
<x:choose> 
	<x:when test="${requestScope.failure='Please enter correct password'}">
		<x:out value="${requestScope.failure}"/>
		<a href="<x:url value="/EmployeeLogin.jsp"/>">Go To Login page</a>
	</x:when>
	<x:otherwise>
		<x:out value="${requestScope.failure}"/>
		<a href="<x:url value="/Employee_Signup.jsp"/>">Go To Sign Up page</a>
	</x:otherwise>
</x:choose>

</body>
</html>