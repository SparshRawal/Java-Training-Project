<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2 style="text-align: center">User Registration Form</h2>
			<br>
			<div class="container">
				<form action="RegisterUser" class="form-horizontal" method="POST">
					<form style="width: 300px">
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="name" style="text-align: left">Name:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="name"
									placeholder="Enter Name" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="email" style="text-align: left">Email
								ID:</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" name="email"
									placeholder="Enter Email ID" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="pwd">Password:</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" name="pwd"
									placeholder="Enter password" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="phone" style="text-align: left">Phone
								Number:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="phone"
									maxlength="10" placeholder="Enter Phone Number" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2" for="address" style="text-align: left">Address:</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="address"
									placeholder="Enter Address" required></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 mr-3" for="file" style="text-align: left">Upload
								Photo:</label>
							<div class="custom-file col-sm-5">
								<input type="file" class="custom-file-input pr-4"
									id="customFile" name="file" required> <label
									class="custom-file-label" for="customFile">Choose file</label>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-outline-success btn-block">Register</button>
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

	<script>
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
				});
	</script>
</body>
</html>