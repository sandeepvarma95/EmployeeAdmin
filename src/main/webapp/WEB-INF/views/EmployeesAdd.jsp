<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<h1>Add Employee</h1>
	<form:form action = "${pageContext.request.contextPath}/save" modelAttribute="employee">
		Enter First Name: <form:input path="first_name"/>
		Enter Last Name: <form:input path="last_name"/><br/>
		Enter Level: 
		<form:select path="level">
			<form:option value="12">Level 12</form:option>
			<form:option value="11">Level 11</form:option>
			<form:option value="10">Level 10</form:option>
			<form:option value="9">Level 9</form:option>
			<form:option value="8">Level 8</form:option>
			<form:option value="7">Level 7</form:option>
			<form:option value="6">Level 6</form:option>
			<form:option value="5">Level 5</form:option>
			<form:option value="4">Level 4</form:option>
			<form:option value="3">Level 3</form:option>
			<form:option value="2">Level 2</form:option>
			<form:option value="1">Level 1</form:option>
		</form:select><br/>
		<%-- Select Gender: <form:radiobutton path="gender" value = "Male"/>Male&nbsp;
					<form:radiobutton path="gender" value = "Female"/>Female&nbsp;<br/> --%>
		Departement: 
		<form:select path="dept">
			<form:option value="IT Research and Development">IT Research and Development</form:option>
			<form:option value="IT Production">IT Production</form:option>
			<form:option value="IT Support and Maintenance">IT Support and Maintenance</form:option>
			<form:option value="Sales">Sales</form:option>
			<form:option value="Marketing">Marketing</form:option>
			<form:option value="Desigining">Designing</form:option>
			<form:option value="Procurement">Procurement</form:option>
			<form:option value="IT Quality and Testing">IT Quality and Testing</form:option>
			<form:option value="Finance">Finance</form:option>
			<form:option value="Human Resources">Human Resources</form:option>
			<form:option value="Finance">Finance</form:option>
			<form:option value="Security">Security</form:option>
			<form:option value="Admin">Admin</form:option>
			<form:option value="Cleaning and Health Safety">Cleaning and Health Safety</form:option>
		</form:select><br/>
		
		Position: 
		<form:select path="position">
			<form:option value="Associate Software Engineer">Associate Software Engineer</form:option>
			<form:option value="Software Engineer">Software Engineer</form:option>
			<form:option value="Senior Software Engineer">Senior Software Engineer</form:option>
			<form:option value="Team Lead">Team Lead</form:option>
			<form:option value="Assitant Manager">Assistant Manager</form:option>
			<form:option value="Manager">Manager</form:option>
			<form:option value="Delivery Unit Lead">Delivery Unit Lead</form:option>
			<form:option value="Product Lead">Product Lead</form:option>
			<form:option value="Technology Lead">Technology Lead</form:option>
			<form:option value="Country Head and Opearations">Country Head and Operations</form:option>
			<form:option value="Chief Technological Officer - CTO">Chief Technological Officer - CTO</form:option>
			<form:option value="Chief Executive Officer - CEO">Chief Executive Officer - CEO</form:option>
		</form:select><br/>
		
		Enter Start Date: <form:input path="start_date" type = "date"/><br/>
		
		Enter End Date: <form:input path="end_date" type = "date"/><br/>
		
		Enter Location: <form:input path="location"/><br/>
		<form:hidden path = "id"/>
		<button type = "submit">Save</button>
	</form:form>
</body>
</html>