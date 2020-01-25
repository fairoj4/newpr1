package controllers;

import beans.CreateReportBean;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.CreateReportDAO;


public class CreateReportController extends HttpServlet {
	int res=-10;
	private static final long serialVersionUID = 1L;

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CreateReportBean crb=new CreateReportBean();
		crb.setPatientid(request.getParameter("patientId"));
		System.out.println("testttttttttttttt"+request.getParameter("patientId"));
		
		CreateReportDAO crd=new CreateReportDAO();
		try {
			res=crd.TestDisplay1(crb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(res==1)
		{
		request.setAttribute("id", crb.getPatientid());
		RequestDispatcher rd=request.getRequestDispatcher("TestDisplay.jsp");
	    request.setAttribute("displaylist", crb);
	    rd.forward(request, response);
		}
		else
		{
			
		}
		
			
	}

}
