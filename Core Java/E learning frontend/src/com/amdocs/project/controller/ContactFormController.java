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

import com.amdocs.project.dao.*;
import com.amdocs.project.dao.impl.*;
import com.amdocs.project.model.*;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegisterContact")
public class ContactFormController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long phone = Long.parseLong(request.getParameter("phone"));
		String message = request.getParameter("message");
	
		ContactDAO dao = new ContactDAOIMPL();
		Contact contact = new Contact(id,email,name,phone,message);
		
		boolean status = dao.saveContact(contact);
		
		if(status)
			out.println("User Saved Successfully");
		else
			out.println("Try Again");
	}
}
