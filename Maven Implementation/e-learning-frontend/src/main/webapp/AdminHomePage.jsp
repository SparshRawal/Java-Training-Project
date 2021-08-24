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
			<h2 class="primary display-4" style="text-align: center">Admin Home Page</h2>
			<br>
			<hr class="secondary">
			
			<div class="container ">
				<div class="accordion ">
					<div class="accordion-item ">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">
								Registered Users</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse"
							aria-labelledby="headingOne" >
							<div class="accordion-body div-scroll">
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
						</div>
					</div>
					<hr class="secondary">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingTwo">
						
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="submit"
								data-bs-toggle="collapse" data-bs-target="#collapseTwo"
								aria-expanded="true" aria-controls="headingTwo">
								Total Courses</button>
								
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse "
							aria-labelledby="headingTwo" >
							<div class="accordion-body div-scroll">
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
						</div>
					</div>
					<hr class="secondary">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingThree">
							<button class="accordion-button btn btn-outline-primary col-sm-4" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseThree"
								aria-expanded="true" aria-controls="headingThree">
								All FeedBacks</button>
						</h2>
						<div id="collapseThree" class="accordion-collapse collapse "
							aria-labelledby="headingThree" >
							<div class="accordion-body col-sm-8 ">
								<div class="accordion div-scroll" id="accordionExample">
								<% 
								FeedbackDAO FB=new FeedbackDAOIMPL();
								ArrayList<Integer> AllUsers=FB.AllUserIDs();
								
								for(int i=0;i<AllUsers.size();i++)
								{
									FeedbackDAO fb=new FeedbackDAOIMPL();
									ArrayList<Feedback> feedbacks =fb.GetUserFeedbacks(AllUsers.get(i));
									FeedbackDAO feedbackdao=new FeedbackDAOIMPL();
							        Feedback feedbackUser=feedbackdao.GetUser(AllUsers.get(i));
								
									%>
										
										<hr class="secondary">
											  <div class="accordion-item row">
											  <div class="col-sm-1"></div>
											    <h2 class="accordion-header col-sm-4" id="heading<%=i %>">
											      <button class="accordion-button collapsed btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapse<%=i %>" aria-expanded="true" aria-controls="collapse<%=i%>">
											        
											        ( <%=feedbackUser.getUser_ID() %> ) | <%=feedbackUser.getName() %> | <%=feedbackUser.getEmail() %>
											      </button>
											    </h2>
											    
											    <div id="collapse<%=i %>" class="accordion-collapse collapse col-sm-12 ml-5 pl-5" aria-labelledby="heading<%=i %>">
											      <div class="accordion-body">
											        <%
											        	for(int j=0;j<feedbacks.size();j++)
											        	{
											        		System.out.print(i);
											        		System.out.println(feedbacks.get(j));
											        		%>	
											        		<hr class="secondary">
											        			<div class="row">
											        			<div class="col-sm-2 primary"><strong>Feedback ID :</strong></div>
											        			<div class="col-sm-4 secondary"><%=feedbacks.get(j).getFeedback_ID() %></div>
											        		 	<div class="col-sm-2 primary"><strong>Feedback :</strong> </div>	
											        		 	<div class="col-sm-4 secondary"><%=feedbacks.get(j).getFeedback() %></div>
											        		 		
											        		 		
											        		 		
											        		 </div>
											        		<%
											        	}
											        %>
											      </div>
											    </div>
											  
											  </div>
											 
									<%
								}
									%>
								</div>								
							</div>
						</div>
					</div>
					</div>
					<hr class="secondary">
					
				</div>
			</div>
		</div>
		
</body>

</html>