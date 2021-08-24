package com.amdocs.project.controller;

import java.io.IOException;
import java.io.PrintWriter;


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
@WebServlet("/RegisterCourse")
public class CourseRegistrationController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("course_name");
		String desc = request.getParameter("desc");
		int fee = Integer.parseInt(request.getParameter("fees"));
		String file=request.getParameter("file");
		
		
		CourseDAO dao = new CourseDAOIMPL();
		Course course = new Course(name,file,desc,fee);
		
		boolean status = dao.saveCourse(course);
		
		if(status)
			response.sendRedirect("Success.jsp");
		else
			response.sendRedirect("Failure.jsp");
	}
}
