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

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/HandleAdminLogin")
public class AdminLoginHandler extends HttpServlet {
		private static String Name;
	    private static String Email;
	    private static int Admin_ID;   
	    
		

	public static String getName() {
			return Name;
		}
		public static void setName(String name) {
			Name = name;
		}
		public static String getEmail() {
			return Email;
		}
		public static void setEmail(String email) {
			Email = email;
		}
		public static int getAdmin_ID() {
			return Admin_ID;
		}
		public static void setAdmin_ID(int admin_ID) {
			Admin_ID = admin_ID;
		}
	public static boolean LogoutAdmin()
	{
		AdminLoginHandler.setAdmin_ID(0);
		AdminLoginHandler.setEmail(null);
		AdminLoginHandler.setName(null);
		return true;		
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session=request.getSession(); 
		if(session!=null) {
			out.print(session.getAttribute("name"));
			out.print("Please Logout");
		}
		else
		{
			out.print(session.getAttribute("name"));
		}
//		session.invalidate();
//		request.getRequestDispatcher("index.jsp").forward(request, response);
		int id=Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		
		
		AdminDAO dao = new AdminDAOIMPL();		
		Admin status = dao.GetAdminDetails(id,email, pwd);
		
		if(status!=null)
		{
			boolean valUser =LoginHandler.LogoutUser();
			Admin_ID=status.getAdmin_ID();
			Name=status.getName();
			Email=status.getEmail();
			
			request.setAttribute("id", Admin_ID);
			request.setAttribute("name", Name);
			request.setAttribute("email", Email);
			

			request.getRequestDispatcher("index.jsp").forward(request, response);
//			session.setAttribute("name",Name);
		}
			
		else
			out.println("Try Again");
	}
}
