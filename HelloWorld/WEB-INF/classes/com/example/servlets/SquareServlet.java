package com.example.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/squares")
public class SquareServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int n = Integer.parseInt(request.getParameter("n"));
		ArrayList<Integer> squareItems = SquareDao.getSquares(n);

		request.setAttribute("squareItems", squareItems);

		ServletContext context = getServletContext();
		RequestDispatcher dispatch = context.getRequestDispatcher("/squares.jsp");
		dispatch.forward(request, response);
	}

}

