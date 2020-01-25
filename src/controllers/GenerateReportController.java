package controllers;

import beans.GenerateReportBean;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.GenerateReportDAO;

/**
 * Servlet implementation class GenerateReportController
 */
public class GenerateReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GenerateReportBean grb=new GenerateReportBean();
		grb.setPatientId(request.getParameter("patientId"));
		grb.setCompletebloodTest(request.getParameter("completeblood"));
		grb.setCompleteurineTest(request.getParameter("completeurine"));
		grb.setWbcTest(request.getParameter("wbc"));
		grb.setSugarTest(request.getParameter("sugar"));
		
		//out.println("hi");
		
		GenerateReportDAO grd=new GenerateReportDAO();
		grd.TestDisplay1(grb);
		
		RequestDispatcher rd=request.getRequestDispatcher("ReportSuccessfull.jsp");
	    
	    rd.forward(request, response);
	}

}
