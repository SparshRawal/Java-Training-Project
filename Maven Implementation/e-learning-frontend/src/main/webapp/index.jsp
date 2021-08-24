<%@ include file="Navbar.jsp" %> 
<%@page import="com.amdocs.project.controller.LoginHandler"%> 
<%@page import="com.amdocs.project.controller.AdminLoginHandler"%> 

<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/theme.css" />
</head>
<body>
	<div class="container">
		<div class="jumbotron bg">
			<h2 class="display-4 primary" style="text-align: center">Welcome To the Home Page</h2>
			<br>
			<hr class="secondary">
			<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4 secondary ">
			
			
			<%
				if(user==null&&admin==null)
				{
					%>
						Nobody Signed In... Please Login To Continue
					<%
				}
				else if(user!=null&&admin==null)
				{
					%>
						USER <%=user.getName() %> is signed in.<br>
						Please use Navigation Bar for more.						
					<%
				}
				else if(user==null&&admin!=null)
				{
					%>
						ADMIN <%=admin.getName() %> is signed in.<br>
						Please use Navigation Bar for more.						
					<%
				}
			%>
			</div>
			</div>
		</div>
	</div>

</body>
</html>