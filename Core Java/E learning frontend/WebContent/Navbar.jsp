<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<title>eLearning Online Portal</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
		<div class="row">
			<h3 style="color: white">
			E Learning Portal</h3>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item col-sm-2"><a href="index.jsp" class="btn btn-outline-light btn-block">Home</a></li>
					<li class="nav-item col-sm-3"><a href="UserRegistration.jsp"	class="btn btn-outline-light btn-block">User Registration</a></li>
					<li class="nav-item col-sm-3"><a href="ContactForm.jsp" class="btn btn-outline-light btn-block">Contact Form</a></li>
					<li class="nav-item col-sm-3"><a href="CourseRegistration.jsp" class="btn btn-outline-light btn-block">Course Registration Form</a></li>
					<li class="nav-item col-sm-3"><a href="FeedbackForm.jsp" class="btn btn-outline-light btn-block">FeedBack Form</a></li>
					<li class="nav-item col-sm-2"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item btn btn-outline-dark" href="Login.jsp">Login</a></li>
            <li><a class="dropdown-item btn btn-outline-dark" href="AdminLogin.jsp">Admin Login</a></li>
            <li><hr class="dropdown-divider" ></li>
            <li><a class="dropdown-item  btn btn-outline-danger" href="Logout.jsp">Logout</a></li>
          </ul></li>
				</ul>
			</div>
			</div>
		</div>
	</nav>




</body>
</html>