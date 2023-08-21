<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body style = "background-color:rgba(200,200,200,0.7)">
<h1 style = "background-color:rgba(120,120,120,0.9);color:white" align = "center">welcome to Contact Page</h1>
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
        	<form align = "center" action = "con" method= "post">
        	<label style = "color:black;font-size:20px">NAME:</label>
           	<input type = "text" name = "nam"style = "background-color:rgba(200,220,111,0.3);font-size:20px" >
            <br><br>
            <label style = "color:black;font-size:20px">PHONE:</label>
            <input type = "text" name = "phone" style = "background-color:rgba(200,220,111,0.3);font-size:20px">
            <br><br>
            <label style = "color:black;font-size:20px">MAIL:</label>
            <input type = "text" name = "mail" style = "background-color:rgba(200,220,111,0.3);font-size:20px">
            <br><br>
            <label style = "color:black;font-size:20px">FEEDBACK</label>
            <input type = "text" name = "area"style = "background-color:rgba(200,220,111,0.3);font-size:20px">
            <br><br>
            <input type = "submit" value = "SUBMIT" style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px">
        </form></div>

</body>
</html>