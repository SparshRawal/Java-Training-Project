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
@WebServlet("/HandleLogout")
public class LogoutHandler extends HttpServlet {
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

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		session.invalidate();
		boolean valUser =LoginHandler.LogoutUser();
		boolean valAdmin=AdminLoginHandler.LogoutAdmin();

		request.getRequestDispatcher("index.jsp").forward(request, response);

	}
}
