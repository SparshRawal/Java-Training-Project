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
@WebServlet("/HandleUserLogin")
public class LoginHandler extends HttpServlet {
	 		
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		ArrayList<Integer> list,UnenrolledList=new ArrayList<Integer>();
		UserCourseConnectorDAO c_dao= new UserCourseConnectorDAOIMPL();
		request.getRequestDispatcher("UserHomePage.jsp").include(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session=request.getSession(); 
		
		ArrayList<Integer> list=new ArrayList<Integer>();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		
		
		UserDAO dao = new UserDAOIMPL();		
		User status = dao.GetDetails(email, pwd);
		
		if(status!=null)
		{
			 
			int User_ID=status.getUser_ID();
			String Name=status.getName();
			String Email=status.getEmail();
			String Address=status.getAddress();
			Date reg_date=status.getDate();
			long Phone=status.getPhone();
			String Upload_Image=status.getUpload_Image();
			User login=new User(User_ID, Name, email, Address, Phone, Upload_Image, reg_date);
			session.setAttribute("User_ID", login);
			session.setAttribute("Admin_ID",null);
			
			request.setAttribute("id", User_ID);
			request.setAttribute("name", Name);
			request.setAttribute("email", Email);
			request.setAttribute("address", Address);
			request.setAttribute("reg_date", reg_date);
			request.setAttribute("phone", Phone);
			request.setAttribute("file", Upload_Image);
			  
//	        session.setAttribute("name",Name); 
//	        UserCourseConnectorDAO c_dao= new UserCourseConnectorDAOIMPL();
//			list=c_dao.GetEnrolledCourses(User_ID);
//			List=list;
//			UnenrolledList=c_dao.GetUnenrolledCourses(User_ID);
//			System.out.println(List);
			response.sendRedirect("UserHomePage.jsp");
			
		}
			
		else
			out.println("Try Again");
	}
}
