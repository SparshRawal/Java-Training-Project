<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<%@page import="com.amdocs.project.controller.LoginHandler"%> 
<%@page import="com.amdocs.project.controller.AdminLoginHandler"%> 

<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login / Sign In</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
		<form action="HandleLogout" class="form-horizontal" method="GET">
					<form style="width: 300px">
						<h2 style="text-align: center">Do You Really Want to Log Out ?</h2><hr> 
						<div class="form-group row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<a href="index.jsp"  class="btn btn-outline-success btn-block" >No, Back to Home</a>
							</div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-outline-danger btn-block">Yes, Log Out</button>
							</div>
						</div>
					</form>
			
		</div>
	</div>

</body>
</html>