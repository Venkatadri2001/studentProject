<%@ page import = "studentlogin.dataentry" %>
<%@ page import = "studentlogin.mediator" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "background-color:rgba(200,200,200,0.7)">
<div><% 
String name = mediator.name;
%></div>

<h1 style = "background-color:rgba(120,120,120,0.7);color:black">WELCOME <%=name %></h1>
<h3>You can check your results by clickinig on getresult button</h3>

<form action = "reg" method = "post">
	<div>
	<input type = "submit" value = "GET RESULT" style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px"><br><br>
</div>
</form>
<form action = "out" method = "post">
<div>
	<input type = "submit" value = "LOGOUT" style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px">
</div>
</form>


</body>
</html>