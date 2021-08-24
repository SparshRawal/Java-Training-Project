package com.amdocs.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.dao.UserCourseConnectorDAO;
import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.CourseDAOIMPL;
import com.amdocs.project.dao.impl.UserCourseConnectorDAOIMPL;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.*;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/HandleEditCourse")
public class EditCourse extends HttpServlet {
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		
		String c_name=null;
		String Desc=null;
		String Resource=null;
		int fee=0;
		int c_id=Integer.parseInt(request.getParameter("course_id"));
		if(request.getParameter("course_name")=="") 
			c_name=request.getParameter("course_name_default");
		else 
			c_name=request.getParameter("course_name");
		
		if(request.getParameter("desc")=="") 
			Desc=request.getParameter("desc_default");
		else 
			Desc=request.getParameter("desc");
		
		if(request.getParameter("file")=="")
			Resource=request.getParameter("file_default");
		else
			Resource=request.getParameter("file");
		
		if(request.getParameter("fees")=="") 
			fee=Integer.parseInt(request.getParameter("fees_default"));
		else
			fee=Integer.parseInt(request.getParameter("fees"));
		
		Course UpdatedCourse = new Course(c_name,Resource,Desc,fee);
		CourseDAO dao=new CourseDAOIMPL();
		boolean status=dao.Update(c_id,UpdatedCourse);
//		out.println(c_id+" "+c_name+" "+Desc+" "+Resource+" "+fee);
//		out.println("Hello ");
//		ArrayList<Integer> list=new ArrayList<Integer>();
//		
//		
//		int c_id=Integer.parseInt(request.getParameter("course_id"));
//		CourseDAO DeletedCourse=new CourseDAOIMPL();
//		boolean status= DeletedCourse.delete(c_id);
//		UserDAO dao = new UserDAOIMPL();		
//		User status = dao.GetDetails(email, pwd);
//		
		if(status!=false)
		{
					
			response.sendRedirect("AdminHomePage.jsp");
//			request.getRequestDispatcher("AdminHomePage.jsp").include(request, response);
		}
			
		else
			response.sendRedirect("Failure.jsp");
	}
}
