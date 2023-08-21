<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>

<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body style = "background-color:rgba(200,200,200,0.7)">
<h1  style = "background-color:rgba(120,120,120,0.9);color:white" align = "center">welcome to Register Page</h1>
        <ul>
            <li>
                <a href = "about.jsp">ABOUT</a>
            </li>
           
            <li>
                <a href = "contact.jsp">CONTACT</a>
            </li>
            
            <li>
                <a href = "register.jsp">REGISTER</a>
            </li>
            <li>
                <a href = "login.jsp">LOGIN</a>
            </li>
            <li>
                <a href = "hom.jsp">HOME</a>
            </li>
        </ul>
        <div class = "log1" style = "background-color:rgba(180,180,180,0.7);width:42%;margin:50px auto"  >
	<form action = "register" method = "post" align = "center">
	    <label style = "color:black;font-size:20px">ID:</label>
		<input type = "text" name = "id" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
		<label style = "color:black;font-size:20px">NAME:</label>
		<input type = "text" name = "user" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
		<label style = "color:black;font-size:20px">MAIL:</label>
		<input type = "text"  name = "mail" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
		<label style = "color:black;font-size:20px">PASSWORD:</label>
		<input type = "password" name = "password" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
		<input type = "submit" value = "REGISTER" style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px"><br><br>
		
	</form></div>
	

</body>
</html>