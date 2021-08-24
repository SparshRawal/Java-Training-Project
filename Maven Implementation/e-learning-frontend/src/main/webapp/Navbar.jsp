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
	<nav class="navbar navbar-expand-lg navbar-dark bg-navbar">


		<div class="navbar-collapse collapse w-50 order-1  dual-collapse2">
			<a class="primary" style="font-size: 20px;" href="index.jsp"><img class="logo" src="images/home-icon.png"></a>
		
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
		<div class="collapse navbar-collapse" id="navbarNav">
				      <ul class="navbar-nav mr-auto">

			
					<%
					if (session.getAttribute("User_ID") != null && session.getAttribute("Admin_ID") == null) {
					%>
					
					<li class="nav-item pl-5"><a href="UserHomePage.jsp"
						class="btn btn-outline-secondary ">User Home</a></li>
					<li class="nav-item pl-5"><a href="ContactForm.jsp"
						class="btn btn-outline-secondary">Contact Form</a></li>
					
					<li class="nav-item pl-5"><a href="FeedbackForm.jsp"
						class="btn btn-outline-secondary">FeedBack Form</a></li>
				
					<%
					} else if (session.getAttribute("User_ID") == null && session.getAttribute("Admin_ID") != null) {
					%>
					
					<li class="nav-item pl-5"><a href="AdminHomePage.jsp"
						class="btn btn-outline-secondary ">Admin Home</a></li>
					<li class="nav-item pl-5"><a href="ExistingUsers.jsp"
						class="btn btn-outline-secondary">View Registered Users
							</a></li>
							<li class="nav-item pl-5"><a href="AllFeedbacks.jsp"
						class="btn btn-outline-secondary">View Feedbacks
							</a></li>
							<li class="nav-item pl-5"><a href="ExistingCourses.jsp"
						class="btn btn-outline-secondary">View Exisiting Courses
							</a></li>
					<%
					
					} else {%><li class="nav-item pl-5"><a href="index.jsp"
						class="btn btn-outline-secondary ">Home</a></li>
				<%
								
					}
					%>
					</ul>
					</div>
					
						<div class="navbar-collapse collapse w-50 order-3 dual-collapse2 mr-5 pr-5">
						<ul class="navbar-nav ml-auto ">
						<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="true">
							<%
							
							if (user == null && admin == null) {
							%><span class="primary">User</span><%
							}
							%> <%
 if (user != null && admin == null) {
 %>
							<span class="primary"><%=user.getName()%> ( <%=user.getUser_ID()%> )</span><%
							}
							%> <%
 if (user == null && admin != null) {
 %>
							<span class="primary">ADMIN <%=admin.getName()%> ( <%=admin.getAdmin_ID()%> )</span><%
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