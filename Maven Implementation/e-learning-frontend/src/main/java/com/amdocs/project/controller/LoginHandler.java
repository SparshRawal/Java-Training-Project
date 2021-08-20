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

import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.*;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/HandleUserLogin")
public class LoginHandler extends HttpServlet {
	 private static String Name;
	    private static String Email;
	    private static String Address;
	    private static long Phone;
	    private static String Upload_Image;
	    private static int User_ID;
	    private static Date reg_date;
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

		public static String getAddress() {
			return Address;
		}

		public static void setAddress(String address) {
			Address = address;
		}

		public static long getPhone() {
			return Phone;
		}

		public static void setPhone(long phone) {
			Phone = phone;
		}

		public static String getUpload_Image() {
			return Upload_Image;
		}

		public static void setUpload_Image(String upload_Image) {
			Upload_Image = upload_Image;
		}

		public static int getUser_ID() {
			return User_ID;
		}

		public static void setUser_ID(int user_ID) {
			User_ID = user_ID;
		}

		public static Date getDate() {
			return reg_date;
		}

		public static void setDate(Date date) {
			reg_date = date;
		}
		public static boolean LogoutUser()
		{
			LoginHandler.setName(null);;
			LoginHandler.setEmail(null);
			LoginHandler.setAddress(null);
			LoginHandler.setPhone(0);
			LoginHandler.setUpload_Image(null);
			LoginHandler.setUser_ID(0);
			LoginHandler.setDate(null);
			return true;		
		}
		

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session=request.getSession(); 
		session.invalidate();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		
		
		UserDAO dao = new UserDAOIMPL();		
		User status = dao.GetDetails(email, pwd);
		
		if(status!=null)
		{
			boolean valAdmin=AdminLoginHandler.LogoutAdmin();  
			User_ID=status.getUser_ID();
			Name=status.getName();
			Email=status.getEmail();
			Address=status.getAddress();
			reg_date=status.getDate();
			Phone=status.getPhone();
			Upload_Image=status.getUpload_Image();
			request.setAttribute("id", User_ID);
			request.setAttribute("name", Name);
			request.setAttribute("email", Email);
			request.setAttribute("address", Address);
			request.setAttribute("reg_date", reg_date);
			request.setAttribute("phone", Phone);
			request.setAttribute("file", Upload_Image);
			request.getRequestDispatcher("index.jsp").include(request, response);  
	        session.setAttribute("name",Name);  
			
		}
			
		else
			out.println("Try Again");
	}
}
