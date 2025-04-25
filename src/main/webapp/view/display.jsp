<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	
	<link rel="stylesheet" href ="/display.css">

	
</head>
<body>

<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Softronix</a>
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

		<h1>Student Record</h1>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Course Name</th>
					<th>Batch Time</th>
					<th>Action</th>

				</tr>
			</thead>

			<c:forEach var="std" items="${student}">
				<tbody>


					<tr>
					
					<td>${std.id}</td>
					<td>${std.name}</td>
					<td>${std.email}</td>
					<td>${std.gender}</td>
					<td>${std.course}</td>
					<td>${std.timing}</td>
					<td>
					<a href="edit/${std.id}" class="btn btn-lg btn-success">Edit</a>
					<a href="delete?id=${std.id}" class="btn btn-lg btn-danger">Delete</a>
					</td>
					
					</tr>
					
				</tbody>


			</c:forEach>

		</table>
	</div>


</body>
</html>