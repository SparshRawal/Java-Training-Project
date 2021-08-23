<%@ include file="Navbar.jsp" %> 
<%@page import="com.amdocs.project.controller.LoginHandler"%> 
<%@page import="com.amdocs.project.controller.AdminLoginHandler"%> 

<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login / Sign In</title>
</head>
<body>
	Name :  <%=user%> <%=session.getAttribute("Admin_ID") %>

</body>
</html>