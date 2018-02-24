<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="com.ap.mango.services.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="com.ap.mango.entity.Users"%>
<%@ page import="com.ap.mango.dao.soundrecorder.AudioFilesDao" %>
<%@ page import="com.mongodb.gridfs.GridFSDBFile" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Result Page</title>
</head>
<body>
	<center>
		<div id="container">
			<h1>Result Page</h1>
			<b>This is Sample Result Page</b><br />
			<%=new Date()%></br>
			<%
                 final Users user = (Users) session.getAttribute("user");
             %>
			<b>Welcome <%= user.getFirstName() + " " + user.getLastName()%></b> <br />
			<a href="logout.jsp">Logout</a>
			</p>

			<table>
				<thead>
					<tr>
						<th>User ID</th>
						<th>First Name</th>
						<th>Middle Name</th>
						<th>Last Name</th>
						<th>email</th>
					</tr>
				</thead>
				<tbody>
					<%
                     final LoginService loginService = new LoginService();
                     final List<Users> list = loginService.getListOfUsers();
                     for (final Users u : list) {
                 %>
					<tr>
						<td><%=u.getUserId()%></td>
						<td><%=u.getFirstName()%></td>
						<td><%=u.getLastName()%></td>
						<td><%=u.getEmailId()%></td>
					</tr>
					<%}%>
				
				<tbody>


			</table>
			<br />
		</div>
	</center>
</body>
