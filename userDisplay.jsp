<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Display</title>
</head>
<body>
	<h1>User Display</h1>
	<%
	  	String firstName = request.getParameter("firstName");
	  	String lastName = request.getParameter("lastName");
	  	String streetAddress = request.getParameter("streetAddress");
	  	String aptNo = request.getParameter("aptNo");
	  	String state = request.getParameter("state");
	  	String zipCode = request.getParameter("zipCode");
	%>
	<table>
		<tr>
			<td>First Name: </td>
			<td><%= firstName %></td>
		</tr>
		<tr>
			<td>Last Name: </td>
			<td><%= firstName %></td>
		</tr>
		<tr>
			<td>Address: </td>
			<td><%= streetAddress  %></td>
		</tr>
		<tr>
			<td></td>
			<td><%= aptNo  %></td>
		</tr>
		<tr>
			<td></td>
			<td><%= state + " " + zipCode  %></td>
		</tr>
	</table>
</body>
</html>