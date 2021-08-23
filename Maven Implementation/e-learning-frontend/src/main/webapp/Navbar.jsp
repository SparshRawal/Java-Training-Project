<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.amdocs.project.controller.LoginHandler"%>
<%@page import="com.amdocs.project.model.*" %>
<%@page import="com.amdocs.project.controller.AdminLoginHandler"%>
<% 
User user=(User)session.getAttribute("User_ID");
Admin admin=(Admin)session.getAttribute("Admin_ID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous"></script>
<title>eLearning Online Portal</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">


		<div class="container-fluid">
			<span style="color: white">E Learning Portal</span>
		
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
		<div class="collapse navbar-collapse" id="navbarNav">
				      <ul class="navbar-nav">

			
					<%
					if (session.getAttribute("User_ID") != null && session.getAttribute("Admin_ID") == null) {
					%>
					
					<li class="nav-item pl-5"><a href="UserHomePage.jsp"
						class="btn btn-outline-light ">User Home</a></li>
					<li class="nav-item pl-5"><a href="ContactForm.jsp"
						class="btn btn-outline-light">Contact Form</a></li>
					
					<li class="nav-item pl-5"><a href="FeedbackForm.jsp"
						class="btn btn-outline-light">FeedBack Form</a></li>
				
					<%
					for(int i=0;i<5;i++)
					{%><li class="nav-item pr-5 pl-5"></li><%}
					%><li class="nav-item pr-3 pl-5"></li><%
					} else if (session.getAttribute("User_ID") == null && session.getAttribute("Admin_ID") != null) {
					%>
					
					<li class="nav-item pl-5"><a href="AdminHomePage.jsp"
						class="btn btn-outline-light ">Admin Home</a></li>
					<li class="nav-item pl-5"><a href="CourseRegistration.jsp"
						class="btn btn-outline-light">View Registered Users
							</a></li>
							<li class="nav-item pl-5"><a href="CourseRegistration.jsp"
						class="btn btn-outline-light">View Feedbacks
							</a></li>
							<li class="nav-item pl-5"><a href="CourseRegistration.jsp"
						class="btn btn-outline-light">View Exisiting Courses
							</a></li>
					<%
					for(int i=0;i<3;i++)
					{%><li class="nav-item pr-5 pl-5"></li><%}						
					%><li class="nav-item pr-3 pl-5"></li><%	
					
					} else {%><li class="nav-item pl-5"><a href="index.jsp"
						class="btn btn-outline-light ">Home</a></li>
				<%
					for(int i=0;i<10;i++)
					{%><li class="nav-item pr-5 pl-5"></li><%}						
					%><li class="nav-item pr-3 pl-5"></li><%					
					}
					%>

						<li class="nav-item dropdown pl-5"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="true">
							<%
							
							if (user == null && admin == null) {
							%>User<%
							}
							%> <%
 if (user != null && admin == null) {
 %>
							<%=user.getName()%> ( <%=user.getUser_ID()%> )<%
							}
							%> <%
 if (user == null && admin != null) {
 %>
							<%=admin.getName()%> ( <%=admin.getAdmin_ID()%> )<%
							}
							%>
					</a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<%
							if (user != null || admin != null) {
							%>
							<li><a class="dropdown-item  btn btn-outline-danger"
								href="Logout.jsp">Logout</a></li>
							<%
							} else {
							%><li><a
								class="dropdown-item btn btn-outline-dark" href="Login.jsp">Login</a></li>
							<li><a class="dropdown-item btn btn-outline-dark"
								href="AdminLogin.jsp">Admin Login</a></li>
							<%
							}
							%>

						</ul>
						</li>
						
				</ul>
			</div>
		
</div>

	</nav>


</body>
</html>