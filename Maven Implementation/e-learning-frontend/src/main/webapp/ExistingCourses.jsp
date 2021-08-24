<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<%@page import="com.amdocs.project.controller.LoginHandler"%>
<%@page import="com.amdocs.project.dao.*"%>
<%@page import="com.amdocs.project.dao.impl.*"%>
<%@page import="com.amdocs.project.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/theme.css" />
<title>Login / Sign In</title>
</head>

<script>
$('#accordion').on('shown.bs.collapse', function () {
     
    var panel = $(this).find('.in');
     
    $('html, body').animate({
        scrollTop: panel.offset().top
    }, 500);
     
});
</script>
<body>
	<div class="container ">
		<div class="jumbotron bg div-scroll-jumbo ">
			<h2 class="primary display-4" style="text-align: center">All Courses</h2>
			<br>
			<hr class="secondary">
			
			<div class="container ">
				<div class="">
								<%
									CourseDAO C_dao=new CourseDAOIMPL();
									ArrayList<Course> CourseList = C_dao.GetAllCourses();
									for(int i=0;i<CourseList.size();i++)
									{
										
																
											%><hr class="secondary">
											<div class="container">
											<div class="row">
											<div class="col-sm-10">
											<div class="row">
												<div class="col-sm-3 primary"><strong>Course Name :</strong></div>
												<div class="col-sm-3 secondary"><%=CourseList.get(i).getCourse_name() %></div>
												<div class="col-sm-3 primary"><strong>Course Fees :</strong></div>
												<div class="col-sm-3 secondary">Rs.<%=CourseList.get(i).getCourse_Fee() %></div>
											</div>
											<div class="row">
													<div class="col-sm-3 primary"><strong>Description :</strong></div>
													<div class="col-sm-3 secondary"><%=CourseList.get(i).getCourse_Desc() %></div>
													<div class="col-sm-3 primary"><strong>Resource File :</strong></div>
													<div class="col-sm-3 secondary"><%=CourseList.get(i).getCourse_Resource() %></div>
											</div>
											</div>
											<div class="col-sm-1">
												
												<form method="post" action="CourseEditor.jsp">
												
												<input type="hidden" name="course_id" value="<%= CourseList.get(i).getCourse_ID() %>"><button type="submit" class="btn btn-outline-primary mt-3" >Edit</button>
												<%request.setAttribute("course_id", CourseList.get(i).getCourse_ID()); %>
												</form>
											</div>
											<div class="col-sm-1">
												
												<a href="HandleDeleteCourse?course_id=<%=CourseList.get(i).getCourse_ID()%>" class="btn btn-outline-danger mt-3" >Delete</a>
											</div>
											</div>
											</div>
											
											<%
										
									}
								
								%>
								<hr class="secondary">
								<div class="row">
								<div class="col-sm-4"></div>
								<a href="CourseRegistration.jsp" class="btn btn-outline-primary btn-block col-sm-4">Add new course !</a>
								</div>
							</div>
					<hr class="secondary">
					
				</div>
			</div>
		</div>
		
</body>

</html>