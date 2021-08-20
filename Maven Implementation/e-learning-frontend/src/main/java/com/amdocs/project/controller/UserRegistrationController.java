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

import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.*;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegisterUser")
public class UserRegistrationController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String file=request.getParameter("file");
		String pwd = request.getParameter("pwd");
		long phone = Long.parseLong(request.getParameter("phone"));
		
		
		 LocalDate now = LocalDate.now();
        Date date=Date.valueOf(now);

		System.out.println("Hello Hi  "+now+"\n"+file);
		UserDAO dao = new UserDAOIMPL();
		User user = new User(name,email,pwd,address,phone,file,date);
		
		boolean status = dao.saveUser(user);
		
		if(status)
			out.println("User Saved Successfully");
		else
			out.println("Try Again");
	}
}
