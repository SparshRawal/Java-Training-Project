<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<!DOCTYPE html>  
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/theme.css" />
<title>Login / Sign In</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron bg">
			<h2 class="primary display-4" style="text-align: center">User Login</h2>
			<br>
			<hr class="secondary">
			<div class="container">
				<form action="HandleUserLogin" class="form-horizontal" method="POST">
					<form style="width: 300px">
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="id" style="text-align: left">Email:</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" name="email"
									placeholder="Enter Email" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="name" style="text-align: left">Password:</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" name="pwd"
									placeholder="Enter Password" required>
							</div>
						</div><br>
						<div class="form-group row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-outline-success btn-block">Login</button>
							</div>
							<div class="col-sm-3">
								<button type="reset" class="btn btn-outline-danger btn-block">Reset</button>
							</div>
						</div>
					</form>
				</form><hr class="secondary"><br>
				<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
				<a href="UserRegistration.jsp" class="btn btn-outline-primary btn-block">New User? Sign Up !</a> 
				</div>
				<div class="col-sm-4"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>