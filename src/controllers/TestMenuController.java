package controllers;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.TestMenuCompleteBloodTestProfileDAO;
import daoimplementation.TestMenuCompleteUrineTestProfileDAO;
import daoimplementation.TestMenuSugarProfileDAO;
import daoimplementation.TestMenuWbcProfileDAO;

/**
 * Servlet implementation class TestMenuController
 */
public class TestMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TestMenuCompleteUrineTestProfileDAO tmd=new TestMenuCompleteUrineTestProfileDAO();
		TestMenuWbcProfileDAO tml=new TestMenuWbcProfileDAO();
		TestMenuSugarProfileDAO tmr=new TestMenuSugarProfileDAO();
		TestMenuCompleteBloodTestProfileDAO tmb=new TestMenuCompleteBloodTestProfileDAO();
		List<TestMenuCompleteUrineTestProfileDAO> testlist=new ArrayList<TestMenuCompleteUrineTestProfileDAO>();
		testlist=tmd.TestMenu();
		List testlist1=new ArrayList();
		testlist1=tml.TestMenu();
		List testlist2=new ArrayList();
		testlist2=tmr.TestMenu();
		List testlist3=new ArrayList();
		testlist3=tmb.TestMenu();
		RequestDispatcher rd=request.getRequestDispatcher("TestMenu.jsp");
	    request.setAttribute("TestMenu", testlist);
	    request.setAttribute("TestMenu1", testlist1);
	    request.setAttribute("TestMenu2", testlist2);
	    request.setAttribute("TestMenu3", testlist3);
	    rd.forward(request, response);

	}

}
