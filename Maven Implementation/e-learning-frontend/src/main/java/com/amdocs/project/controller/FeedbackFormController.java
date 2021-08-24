

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
@WebServlet("/RegisterFeedback")
public class FeedbackFormController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String feedback = request.getParameter("feedback");
	
		FeedbackDAO dao = new FeedbackDAOIMPL();
		Feedback fback = new Feedback(id,name,email,feedback);
		
		boolean status = dao.saveFeedback(fback);
		
		if(status)
			response.sendRedirect("Success.jsp");
		else
			out.println("Try Again");
	}
}
