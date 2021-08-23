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
@WebServlet("/HandleEnroll")
public class EnrollCourse extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session=request.getSession(); 
		
		ArrayList<Integer> list=new ArrayList<Integer>();
		
		
		int c_id=Integer.parseInt(request.getParameter("course_id"));
		UserCourseConnectorDAO course=new UserCourseConnectorDAOIMPL();
		User user=(User)session.getAttribute("User_ID");
		boolean status= course.EnrollCourse(user.getUser_ID(), c_id);
//		UserDAO dao = new UserDAOIMPL();		
//		User status = dao.GetDetails(email, pwd);
//		
		if(status!=false)
		{
					
			response.sendRedirect("UserHomePage.jsp");			
//			request.getRequestDispatcher("HandleUserLogin").include(request, response);
		}
			
		else
			request.getRequestDispatcher("HandleUserLogin").include(request, response);
	}
}
