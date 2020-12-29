<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>
</head>
<body>
<a href="/logout">logout</a>
<div align="center">
	<h1>List of Employees</h1>
	<table border="1" cellpadding="10">
		<tr>
			 	<th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Level</th>
                <th>Department</th>
                <th>Position</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Location</th>
				<th>Actions</th>
		</tr>
		<c:forEach items="${list}" var="e">
			<tr>
				<td>${e.id}</td>
				<td>${e.first_name}</td>
				<td>${e.last_name}</td>
				<td>${e.level}</td>
				<td>${e.dept}</td>
				<td>${e.position}</td>
				<td>${e.start_date}</td>
				<td>${e.end_date}</td>
				<td>${e.location}</td>
				<td>
					<a href = "${pageContext.request.contextPath}/employee?id=${e.id}">Edit</a>
					|
					<a href = "${pageContext.request.contextPath}/delete/${e.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</br>
	<button onclick="window.location.href='${pageContext.request.contextPath}/addEmployee'">Add Employee</button>
	</div>  
</body>
</html>