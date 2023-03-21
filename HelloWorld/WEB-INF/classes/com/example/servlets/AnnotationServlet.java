package com.example.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(description = "A servlet using annotations.", urlPatterns = {"/annotation"})
public class AnnotationServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		writer.println("<!DOCTYPE html><html><head>");
		writer.println("<title>AnnotationServlet</title></head>");
		writer.println("<body>Hello from AnnotationServlet.</body></html>");
	}
}
