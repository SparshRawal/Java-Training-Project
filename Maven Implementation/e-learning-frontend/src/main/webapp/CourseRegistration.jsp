<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %> 
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Registration Form</title>
<link rel="stylesheet" type="text/css" href="css/theme.css" />
</head>
<body>
	<div class="container">
		<div class="jumbotron bg">
			<h2 class="primary display-4" style="text-align: center">Add New Course</h2>
			<br>
			<hr class="secondary">
			<div class="container">
				<form action="RegisterCourse" class="form-horizontal" method="POST">
					<form style="width: 300px">				
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="name" style="text-align: left">Course
								Name:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="course_name"
									placeholder="Enter New Course Name" required>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="feedback" style="text-align: left">Course
								Description:</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="desc"
									placeholder="Enter Course Description" rows="3" required></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>

							<label class="col-sm-2 mr-3 primary" for="file" style="text-align: left">Upload
								Course Resources:</label>
							<div class="custom-file col-sm-5">
								<input type="file" class="custom-file-input pr-4"
									id="customFile" name="file"> <label
									class="custom-file-label" for="customFile" required>Choose file</label>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="email" style="text-align: left">Course
								Fees:</label>
							<div class="col-sm-6">
								<input type="number" class="form-control" name="fees"
									placeholder="Enter Course Fee" required>
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