<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<link rel="stylesheet" href ="/reg.css">



</head>
<body>

	<h2>Registration Form</h2>

	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Softtronix</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-toggle="dropdown" aria-expanded="false"> Dropdown </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Java</a> <a
								class="dropdown-item" href="#">Pyhton </a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Data-Science </a>
						</div></li>
					<li class="nav-item"><a class="nav-link disabled">Disabled</a>
					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>

	</div>

	<div class="container" align="center">
		<div class="jumbotron" align="center">
			<form:form action="./save" method="post" modelAttribute="student">

				<table>
					<tr>
						<td>Student Name</td>
						<td><form:input path="name" /></td>
					</tr>

					<tr>
						<td>Student Email</td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td>Gender</td>
						<td><label> <form:radiobutton path="gender"
									value="Male" /> Male
						</label> <label> <form:radiobutton path="gender" value="Female" />
								Female
						</label></td>
					</tr>


					<tr>
						<td>Courses</td>
						<td><form:select path="course">
								<form:option value="select">select</form:option>
								<form:options items="${course}" />
							</form:select></td>
					</tr>

					<tr>
						<td>Timing</td>
						<td><form:checkboxes items="${timing}" path="timing" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Register"
							class="btn btn-lg-primary"></td>
					</tr>

				</table>



			</form:form>
		</div>
	</div>

</body>
</html>