package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.TestDisplayDAO;

/**
 * Servlet implementation class TestDisplayController
 */
public class TestDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TestDisplayDAO td=new TestDisplayDAO();
		List testdisplay=new ArrayList();
		testdisplay=td.TestDisplay();
		RequestDispatcher rd=request.getRequestDispatcher("TestDisplay.jsp");
	    request.setAttribute("testdisplay", testdisplay);
	    rd.forward(request, response);
	}

}
