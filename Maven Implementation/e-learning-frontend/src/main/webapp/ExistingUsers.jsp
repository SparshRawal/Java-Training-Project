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
			<h2 class="primary display-4" style="text-align: center">Existing Users</h2>
			<br>
			<hr class="secondary">
			
			<div class="container ">
							<div class="">
							<%
									UserDAO dao=new UserDAOIMPL();
									ArrayList<User> UserList = dao.GetAllUsers();
									for(int i=0;i<UserList.size();i++)
									{
										
																		
											%><hr class="secondary">
											<div class="row">
												<div class="col-sm-3 primary"><strong>User Id :</strong></div>
												<div class="col-sm-3 secondary"><%=UserList.get(i).getUser_ID() %></div>
												<div class="col-sm-3 primary"><strong>Name :</strong></div>
												<div class="col-sm-3 secondary"><%=UserList.get(i).getName() %></div>
											</div>
											<div class="row">
													<div class="col-sm-3 primary"><strong>Email :</strong></div>
													<div class="col-sm-3 secondary"><%=UserList.get(i).getEmail() %></div>
													<div class="col-sm-3 primary"><strong>Contact No :</strong></div>
													<div class="col-sm-3 secondary"><%=UserList.get(i).getPhone() %></div>
											</div><%
										
									}
								
								%>
							</div>
						
						
					<hr class="secondary">
					
				</div>
			</div>
		</div>
		
</body>

</html>
</body>
</html>