<%@page import="com.amdocs.project.controller.LoginHandler"%>  
<jsp:useBean id="obj" class="com.amdocs.project.controller.UserLoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>  