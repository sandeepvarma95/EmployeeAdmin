<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<style>
.button {
	border-radius: 4px;
	background-color: #3396FF;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 18px;
	padding: 12px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
</style>

<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}

.topnav-right {
	float: right;
}
</style>

<title>Employee List</title>
</head>
<body>
	<div class="topnav">
		<div class="topnav-right">
			<a href="/logout">Logout &nbsp;</span><i class="fa fa-sign-out"></i></a>
		</div>
	</div>
	<br />
	<div align="center">
		<div class="container">
			<h1>Employee List</h1>
			<table border="1" cellpadding="10" class="table table-fluid"
				id="myTable">
				<thead>
					<tr>
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
				</thead>
				<tbody>
					<c:forEach items="${list}" var="e">
						<tr>
							<td>${e.first_name}</td>
							<td>${e.last_name}</td>
							<td>${e.level}</td>
							<td>${e.dept}</td>
							<td>${e.position}</td>
							<td>${e.start_date}</td>
							<td>${e.end_date}</td>
							<td>${e.location}</td>
							<td><a
								href="${pageContext.request.contextPath}/employee?id=${e.id}">Edit</a>
								| <a href="${pageContext.request.contextPath}/delete/${e.id}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<script>
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
    </script>
		</br>
		<button class="button"
			onclick="window.location.href='${pageContext.request.contextPath}/addEmployee'">
			<span>Add Employee</span>
		</button>
	</div>
</body>
</html>