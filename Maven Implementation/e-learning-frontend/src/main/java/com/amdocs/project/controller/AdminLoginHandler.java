package com.amdocs.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amdocs.project.dao.AdminDAO;
import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.AdminDAOIMPL;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.*;
import com.mysql.cj.Session;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/HandleAdminLogin")
public class AdminLoginHandler extends HttpServlet {
		

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(); 
		
//		session.invalidate();
//		request.getRequestDispatcher("index.jsp").forward(request, response);
		int id=Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		
		
		AdminDAO dao = new AdminDAOIMPL();		
		Admin status = dao.GetAdminDetails(id,email, pwd);
		
		if(status!=null)
		{
			int Admin_ID=status.getAdmin_ID();
			String Name=status.getName();
			String Email=status.getEmail();
			
			Admin admin = new Admin(id, Name, Email);
			session.setAttribute("Admin_ID", admin);
			session.setAttribute("User_ID", null);
			
			request.setAttribute("id", Admin_ID);
			request.setAttribute("name", Name);
			request.setAttribute("email", Email);
			
			response.sendRedirect("AdminHomePage.jsp");
			
		}
			
		else
			out.println("Try Again");
	}
}
