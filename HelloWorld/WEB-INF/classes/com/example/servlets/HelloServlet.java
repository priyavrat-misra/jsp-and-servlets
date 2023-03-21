package com.example.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

// http://localhost:8080/HelloWorld/hello?username=World&symbol=?
@WebServlet(urlPatterns = {"/hello", "/hi"})
public class HelloServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String symbol = request.getParameter("symbol");
		writer.println("<!DOCTYPE html><html><head>");
		writer.println("<title>Hello!</title></head><body>Hello ");
		if (username == null && symbol == null)
			writer.println("World!");
		else if (username == null)
			writer.println("World" + symbol);
		else if (symbol == null)
			writer.println(username + "!");
		else
			writer.println(username + symbol);
		writer.println("</body></html>");
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("mail");
		String password = request.getParameter("pass");
		// request.getParameterValues() if multiple data is being passed (e.g., checkboxes)
		writer.println("<!DOCTYPE html><html><head>");
		writer.println("<title>Hello!</title></head><body>");
		if (email != null && password != null)
			writer.println("Logged in successfully!");
		else
			writer.println("Something went wrong.");
		writer.println("</body></html>");
	}

}

