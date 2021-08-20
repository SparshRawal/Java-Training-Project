<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="Navbar.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Form</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2 style="text-align: center">New Contact Form</h2>
			<br>
			<div class="container">
				<form action="RegisterContact" class="form-horizontal" method="POST">
					<form style="width: 300px">
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="id" style="text-align: left">User
								ID:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="id"
									placeholder="Enter User ID">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="name" style="text-align: left">Name:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="name"
									placeholder="Enter Name">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="email" style="text-align: left">Email
								ID:</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" name="email"
									placeholder="Enter Email ID">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="phone" style="text-align: left">Phone
								Number:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="phone"
									maxlength="10" placeholder="Enter Phone Number">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="message" style="text-align: left">Message:</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="message"
									placeholder="Enter Message" rows="3"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-outline-success btn-block">Submit</button>
							</div>
							<div class="col-sm-3">
								<button type="reset" class="btn btn-outline-danger btn-block">Reset</button>
							</div>
						</div>
					</form>
				</form>
			</div>
		</div>
	</div>


</body>
</html>