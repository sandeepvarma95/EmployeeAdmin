<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);
*:focus {
  outline: none;
}

body {
  margin: 0;
  padding: 0;
  background: #DDD;
  font-size: 16px;
  color: #222;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
}

#login-box {
  position: relative;
  margin: 5% auto;
  width: 600px;
  height: 800px;
  background: #FFF;
  border-radius: 2px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
}

.left {
  position: absolute;
  top: 0;
  left: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
}

h1 {
  margin: 0 0 20px 0;
  font-weight: 300;
  font-size: 28px;
}

input[type="text"],
input[type="password"] {
  display: block;
  box-sizing: border-box;
  margin-bottom: 20px;
  padding: 4px;
  width: 220px;
  height: 32px;
  border: none;
  border-bottom: 1px solid #AAA;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
  font-size: 15px;
  transition: 0.2s ease;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-bottom: 2px solid #16a085;
  color: #16a085;
  transition: 0.2s ease;
}

input[type="submit"] {
  margin-top: 28px;
  width: 120px;
  height: 32px;
  background: #16a085;
  border: none;
  border-radius: 2px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  text-transform: uppercase;
  transition: 0.1s ease;
  cursor: pointer;
}

input[type="submit"]:hover,
input[type="submit"]:focus {
  opacity: 0.8;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  transition: 0.1s ease;
}

input[type="submit"]:active {
  opacity: 1;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
  transition: 0.1s ease;
}

.or {
  position: absolute;
  top: 180px;
  left: 280px;
  width: 40px;
  height: 40px;
  background: #DDD;
  border-radius: 50%;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  line-height: 40px;
  text-align: center;
}

.right {
  position: absolute;
  top: 0;
  right: 0;
  box-sizing: border-box;
  padding: 40px;
  width: 300px;
  height: 400px;
  background: url('https://goo.gl/YbktSj');
  background-size: cover;
  background-position: center;
  border-radius: 0 2px 2px 0;
}

.right .loginwith {
  display: block;
  margin-bottom: 40px;
  font-size: 28px;
  color: #FFF;
  text-align: center;
}

button.social-signin {
  margin-bottom: 20px;
  width: 220px;
  height: 36px;
  border: none;
  border-radius: 2px;
  color: #FFF;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  transition: 0.2s ease;
  cursor: pointer;
}

button.social-signin:hover,
button.social-signin:focus {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  transition: 0.2s ease;
}

button.social-signin:active {
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
  transition: 0.2s ease;
}

button.social-signin.facebook {
  background: #32508E;
}

button.social-signin.twitter {
  background: #55ACEE;
}

button.social-signin.google {
  background: #DD4B39;
}
</style>

<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 12px;
  width: 150px;
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

</head>
<body>
<div id="login-box">
  <div class="left">
	<h1>Add Employee</h1>
	<form:form action = "${pageContext.request.contextPath}/save" modelAttribute="employee">
		Enter First Name: <form:input path="first_name"/><br/>
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
		</form:select><br/><br/>
		<%-- Select Gender: <form:radiobutton path="gender" value = "Male"/>Male&nbsp;
					<form:radiobutton path="gender" value = "Female"/>Female&nbsp;<br/> --%>
		Department: 
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
			<form:option value="Leadership">Leadership</form:option>
		</form:select><br/><br/>
		
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
		</form:select><br/><br/>
		
		Enter Start Date: <form:input path="start_date" type = "date"/><br/><br/>
		
		Enter End Date: <form:input path="end_date" type = "date"/><br/><br/>
		
		Enter Location: <form:input path="location"/><br/><br/>
		<form:hidden path = "id"/>
		<button class="button" style="vertical-align:middle" type = "submit"><span>	Save</span></button>
	</form:form>
	<div>
	</div>
	</div>
</body>
</html>