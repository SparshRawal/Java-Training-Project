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
<title>Login / Sign In</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2 style="text-align: center">Course Enrollment Page</h2>
			<hr style="color:black">
			<div class="container">
				<h3>
					Courses Available For Enrollment
				</h3>
			</div>
			<%
									CourseDAO dao=new CourseDAOIMPL();
									UserCourseConnectorDAO c_dao=new UserCourseConnectorDAOIMPL();
									ArrayList<Integer> Unenrolledlist = c_dao.GetUnenrolledCourses(user.getUser_ID());
									for(int i=0;i<Unenrolledlist.size();i++)
									{
										
										Course course=dao.GetCourse(Unenrolledlist.get(i));
										
											%><hr>
											<div class="container">
											<div class="row">
											<div class="col-sm-10">
											<div class="row">
												<div class="col-sm-2"><strong>Course Name :</strong></div>
												<div class="col-sm-4"><%=course.getCourse_name() %></div>
												<div class="col-sm-2"><strong>Course Fees :</strong></div>
												<div class="col-sm-4">Rs.<%=course.getCourse_Fee() %></div>
											</div><br>
											<div class="row">
													<div class="col-sm-2"><strong>Description :</strong></div>
													<div class="col-sm-10"><%=course.getCourse_Desc() %></div>
													
											</div>
											</div>
											<div class="col-sm-2">
											
												<a href="HandleEnroll?course_id=<%=Unenrolledlist.get(i)%>" class="btn btn-outline-primary mt-3" >Enroll Now</a>
											
											</div>
											</div>
											</div>
											
											<%
										
									}
								
								%>
		</div>
</body>