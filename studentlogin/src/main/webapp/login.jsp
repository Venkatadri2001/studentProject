<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">

</head>
<body style = "background-color:rgba(200,200,200,0.7)">
<h1 style = "background-color:rgba(120,120,120,0.9);color:white" align = "center">welcome to the Login Page</h1>
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
<form onsubmit = "return myfun1()" action = "log" method = "post" class = "login" align = "center">
<label style = "color:black;font-size:20px">ID:</label>
	<input type = "text" id = "d1"  name = "id" required = "required" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
	<span id = "mess"></span>
	<label style = "color:black;font-size:20px">NAME:</label>
	<input type = "text" id = "d2" name = "user" required = "required"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
	<span id = "mess1"></span>
	<label style = "color:black;font-size:20px">PASSWORD:</label>
	<input type = "password" id = "d3"   name = "pass" required = "required"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
	<span id = "mess2"></span>
	<input type = "submit" value = LOGIN style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px"><br><br>
	
</form></div>
<script>
        function myfun1()
        {
            var pp = /^[a-zA-Z]{4,8}$/
            let a = document.getElementById("d1").value
            let b = document.getElementById("d2").value
            if(a=="")
            {
                document.getElementById("mess").innerHTML="enter the id"
                return false
            }
            if(b=="")
            {
                document.getElementById("mess1").innerHTML="enter the name"
                return false
            }

            
        }
    </script>
</body>
</html>