package controllers;

import beans.GenerateReportBean;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.ReportDeliveryDAO;


public class ReportDeliveryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int res=-10;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GenerateReportBean grb=new GenerateReportBean();
		GenerateReportBean grb1=new GenerateReportBean();

		grb.setPatientId(request.getParameter("patientid"));
		request.setAttribute("id1", request.getParameter("patientid"));
		
		ReportDeliveryDAO rdd=new ReportDeliveryDAO();
		try {
			res=(rdd.TestDisplay1(grb));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res==0)
		{
			response.sendRedirect("Fail.jsp");
		}
		
		else
		{
		RequestDispatcher rd=request.getRequestDispatcher("ReportDelivery.jsp");
	    rd.forward(request, response);
		}
	}

}
