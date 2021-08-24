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
			<h2 class="primary display-4" style="text-align: center">All Feedbacks</h2>
			<br>
			<hr class="secondary">
			
			<div class="container ">
				<div class="accordion" id="accordionExample">
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
					<hr class="secondary">
					
				</div>
			</div>
		</div>
		
</body>

</html>