<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2 style="color:red">Generalized Exception Handler Page</h2>
	<hr>
	Exception Occurred is: ${message}
	<hr>
	<br/>
	<a href="${pageContext.request.contextPath}/">Home</a>
</center>
</body>
</html>