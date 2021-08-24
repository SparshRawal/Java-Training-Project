<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp" %> 
<%@page import="com.amdocs.project.controller.LoginHandler"%>
<%@page import="com.amdocs.project.dao.*"%>
<%@page import="com.amdocs.project.dao.impl.*"%>
<%@page import="com.amdocs.project.model.*"%>
<%@page import="java.util.*"%>
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
			<h2 style="text-align: center " class="primary display-4">Course Editing</h2>
			<hr class="secondary">
			<div class="container">
				<form action="HandleEditCourse" class="form-horizontal" method="POST">
					<form style="width: 300px">
					<%
					int c_id=Integer.parseInt(request.getParameter("course_id"));
					CourseDAO dao = new CourseDAOIMPL();
					Course CourseDetails=dao.GetCourse(c_id);
					
					%>	
					<div class="form-group row">
							<div class="col-sm-2"></div><strong>
							<label class="col-sm-2 mr-3 primary" style="text-align: left">Parameter
								</label></strong>
							<div class="col-sm-3 ml-5 primary"><strong>Old Value</strong></div>
							<div class="col-sm-5 primary" style="text-align: left">
								<strong >New Value</strong>
							</div>
						</div>			
						<div class="form-group row">
						<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="name" style="text-align: left">Course
								Name:</label>
							<div class="col-sm-3 secondary"><%=CourseDetails.getCourse_name() %></div>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="course_name"
									placeholder="Enter New Course Name" >
								<input type="hidden" name="course_name_default" value="<%=CourseDetails.getCourse_name() %>" >
								<input type="hidden" name="course_id" value="<%=c_id %>">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="feedback" style="text-align: left">Course
								Description:</label>
								<div class="col-sm-3 secondary"><%=CourseDetails.getCourse_Desc() %></div>
							<div class="col-sm-5">
								<textarea class="form-control" name="desc"
									placeholder="Enter New Course Description" rows="3" ></textarea>
								<input type="hidden" name="desc_default" value="<%=CourseDetails.getCourse_Desc() %>" >
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>

							<label class="col-sm-2 primary" for="file" style="text-align: left">Upload
								Course Resources:</label>
								<div class="col-sm-3 secondary"><%=CourseDetails.getCourse_Resource() %></div>
							<div class="custom-file col-sm-4 ml-3" >
								<input type="file" class="custom-file-input"
									id="customFile" name="file" > <label
									class="custom-file-label" for="customFile" >Upload New file</label>
								
								<input type="hidden" name="file_default" value="<%=CourseDetails.getCourse_Resource() %>" >
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<label class="col-sm-2 primary" for="email" style="text-align: left">Course
								Fees:</label>
								<div class="col-sm-3 secondary"><%=CourseDetails.getCourse_Fee() %></div>
							<div class="col-sm-5">
								<input type="number" class="form-control" name="fees"
									placeholder="Enter Revised Course Fee" >
								<input type="hidden" name="fees_default" value="<%=CourseDetails.getCourse_Fee()%>" >
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