<%@ page import= "studentlogin.dataentry" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.lang.String" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body style = "background-color:rgba(120,120,200,0.4)">
<h1 style = "background-color:rgba(120,120,120,0.9);color:black" align = "center">WELCOME TO ADMIN PAGE</h1>

	<%
		List ulist = dataentry.userinfo();
		List clist = dataentry.contactinfo();
	%>
	<div>
		<div class = "button-container" align = "center" style = "margin:40px 10px 40px auto; background-color :rgba(120,120,120,0.9)">
			<a  href = "#tab1"><button class = "active" style = "background-color :rgba(20,8,25,0.8); color:white; padding:10px; text-size:30px; width:10%; cursor:pointer;" >VIEW USER INFO</button></a>
			<a  href = "#tab2"><button class = "active" style = "background-color :rgba(20,8,25,0.8); color:white; padding:10px; text-size:30px; width:10%; cursor:pointer;" >ADD DATA</button></a>
			<a href = "#tab3"><button class = "active " style = "background-color :rgba(20,8,25,0.8); color:white; padding:10px; text-size:30px; width:10%; cursor:pointer;">VIEW FEEDBACK</button></a>
			<a href = "login.jsp"><button style = "background-color :rgba(20,8,25,0.8); color:white; padding:10px; text-size:30px; width:10%; cursor:pointer;">LOGOUT</button></a>
		
		</div>
		<div class = "content-container">
			<div id = "tab1" align = "center" style = "background-color:rgba(180,180,180,0.7);width:42%;margin:50px auto" >
				<h1 style = "background-color:rgba(120,120,120,0.9);color:black">STUDENT INFO</h1>
				<table border = "1">
					<thead  style = "margin:40px 10px 40px auto; background-color :rgba(1,120,120,0.4)">
						<tr>
							<td><b>ID</b></td>
							<td><b>NAME</b></td>
							<td><b>MAIL</b></td>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<ulist.size();i++){
								String[] user = ((String)ulist.get(i)).split(":");
							
						%>
						<tr>
							
							<td><%=user[0] %></td>
							<td><%=user[1] %></td>
							<td><%=user[2] %></td>
						
						</tr>
						<% 
							}
						%>
						
					</tbody>
				</table>
				
			</div>
			
			
			<div id = "tab2" align = "center" style = "background-color:rgba(180,180,180,0.7);width:42%;margin:50px auto">
			<h1 style = "background-color:rgba(120,120,120,0.9);color:black" align = "center">ADD PERCENTAGE</h1>
			<form action = "data" method = "post">
				<label style = "color:black;font-size:20px">ID:</label>
				<input type = "text" name = "id"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM1:</label>
				<input type = "text" name = "sem1"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM2:</label>
				<input type = "text" name = "sem2"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM3:</label>
				<input type = "text" name = "sem3"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM4:</label>
				<input type = "text" name = "sem4"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM5:</label>
				<input type = "text" name = "sem5"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM6:</label>
				<input type = "text" name = "sem6" style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM7:</label>
				<input type = "text" name = "sem7"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<label style = "color:black;font-size:20px">SEM8:</label>
				<input type = "text" name = "sem8"  style = "background-color:rgba(200,220,111,0.3);font-size:20px"><br><br>
				<input type = "submit" value = "SUBMIT" style = "background-color:	rgba(162, 209, 178,0.5);font-size:20px">
			</form>
			
			</div>
			
			
			<div id = "tab3" align = "center"  style = "background-color:rgba(180,180,180,0.7);width:42%;margin:50px auto">
				<h1 style = "background-color:rgba(120,120,120,0.9);color:black">FEEDBACK INFO</h1>
				<table border = "1">
					<thead  style = "margin:40px 10px 40px auto; background-color :rgba(1,120,120,0.4)">
						<tr>
							<td><b>NAME</b></td>
							<td><b>PHONE</b></td>
							<td><b>MAIL</b></td>
							<td><b>FEEDBACK</b></td>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<clist.size();i++){
								String[] con = ((String)clist.get(i)).split(":");
							
						%>
						<tr>
							
							<td><%=con[0] %></td>
							<td><%=con[1] %></td>
							<td><%=con[2] %></td>
							<td><%=con[3] %></td>
							
						
						</tr>
						<% 
							}
						%>
						
					</tbody>
				</table>
				
			</div>
			
						
		</div>
	</div>

</body>
</html>