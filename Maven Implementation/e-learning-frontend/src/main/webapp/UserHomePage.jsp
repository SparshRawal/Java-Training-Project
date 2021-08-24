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
<link rel="stylesheet" type="text/css" href="css/theme.css" />
</head>
<body>
	<div class="container">
		<div class="jumbotron bg div-scroll-jumbo">
			<h2 class="primary display-4" style="text-align: center">User Home Page</h2>
			<hr class="secondary" style="color:black">
			
			<div class="container">
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">
								Your Details</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse "
							aria-labelledby="headingOne" >
							<div class="accordion-body ">
							<div class="row">
								<div class="col-sm-2 primary">User ID : </div>
								<div class="col-sm-4 secondary"><%=user.getUser_ID() %></div>								 
							</div>
							<div class="row">
								<div class="col-sm-2 primary">Name : </div>
								<div class="col-sm-4 secondary"><%=user.getName() %></div>								 
							</div>
							<div class="row">
								<div class="col-sm-2 primary">Email ID : </div>
								<div class="col-sm-4 secondary"><%=user.getEmail()%></div>								 
							</div>
							<div class="row">
								<div class="col-sm-2 primary">Contact Number : </div>
								<div class="col-sm-4 secondary"><%=user.getPhone()%></div>								 
							</div>
							<div class="row">
								<div class="col-sm-2 primary">Address : </div>
								<div class="col-sm-4 secondary"><%=user.getAddress()%></div>								 
							</div>
							<div class="row">
								<div class="col-sm-2 primary">Registration Date : </div>
								<div class="col-sm-4 secondary"><%=user.getDate() %></div>								 
							</div>
							</div>
						</div>
					</div>
					<hr class="secondary">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingTwo">
						
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="submit"
								data-bs-toggle="collapse" data-bs-target="#collapseTwo"
								aria-expanded="true" aria-controls="headingTwo">
								Your Enrolled Courses</button>
								
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse "
							aria-labelledby="headingTwo" >
							<div class="accordion-body div-scroll">
								<%
									CourseDAO dao= new CourseDAOIMPL();
									UserCourseConnectorDAO c_dao=new UserCourseConnectorDAOIMPL();
									ArrayList<Integer> list = c_dao.GetEnrolledCourses(user.getUser_ID());
									for(int i=0;i<list.size();i++)
									{
										
										Course course=dao.GetCourse(list.get(i));
										
											%><hr class="secondary">
											<div class="row">
												<div class="col-sm-3 primary"><strong>Course Name :</strong></div>
												<div class="col-sm-3 secondary"><%=course.getCourse_name() %></div>
												<div class="col-sm-3 primary"><strong>Course Fees :</strong></div>
												<div class="col-sm-3 secondary">Rs.<%=course.getCourse_Fee() %></div>
											</div>
											<div class="row">
													<div class="col-sm-3 primary"><strong>Description :</strong></div>
													<div class="col-sm-3 secondary"><%=course.getCourse_Desc() %></div>
													<div class="col-sm-3 primary"><strong>Resource File :</strong></div>
													<div class="col-sm-3 secondary"><%=course.getCourse_Resource() %></div>
											</div><%
										
									}
								
								%>
								<hr class="secondary">
								<div class="row">
								<div class="col-sm-4"></div>
								<a href="Enroll.jsp" class="btn btn-outline-primary btn-block col-sm-4">Enroll for new course !</a>
								</div>
							</div>
						</div>
					</div>
					<hr class="secondary">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingThree">
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseThree"
								aria-expanded="true" aria-controls="headingThree">
								Your Contacts</button>
						</h2>
						<div id="collapseThree" class="accordion-collapse collapse "
							aria-labelledby="headingThree" >
							<div class="accordion-body">
								<strong>This is the first item's accordion body.</strong> It is
								shown by default, until the collapse plugin adds the appropriate
								classes that we use to style each element. These classes control
								the overall appearance, as well as the showing and hiding via
								CSS transitions. You can modify any of this with custom CSS or
								overriding our default variables. It's also worth noting that
								just about any HTML can go within the
								<code>.accordion-body</code>
								, though the transition does limit overflow.
							</div>
						</div>
					</div>
					</div>
					<hr class="secondary">
					
				</div>
			</div>
		</div>
</body>