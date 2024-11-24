package com.welcome.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.getWriter().println("welcome to login page");
		HttpSession session = request.getSession();
        session.setAttribute("username", "narsing");
		request.getRequestDispatcher("login.jsp").forward(request, response);
		//response.sendRedirect("login.jsp");
	}

}
