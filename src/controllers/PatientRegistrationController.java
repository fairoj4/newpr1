package controllers;

import beans.PatientBean;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.PatientRegistrationDAO;

/**
 * Servlet implementation class PatientRegistration
 */
public class PatientRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PatientBean pb=new PatientBean();
		pb.setFname(request.getParameter("fname"));
		pb.setLname(request.getParameter("lname"));
        pb.setAge(request.getParameter("age"));
		pb.setDoctor(request.getParameter("doctor"));
		pb.setGender(request.getParameter("g"));
		pb.setEmailid(request.getParameter("email"));
		pb.setMobileNo(request.getParameter("mobile"));
		pb.setTest1(request.getParameter("test1"));
		pb.setTest2(request.getParameter("test2"));
		pb.setTest3(request.getParameter("test3"));
		pb.setTest4(request.getParameter("test4"));
		pb.setAppointmentDate(request.getParameter("date"));
		pb.setPatientId(request.getParameter("patientId"));
		pb.setAppointmentTime(request.getParameter("time"));
		System.out.println(request.getParameter("patientId"));
		
		boolean state=request.getParameter("test1") != null;
		boolean state1=request.getParameter("test2")!=null;
		boolean state2=request.getParameter("test3")!=null;
		boolean state3=request.getParameter("test4")!=null;
		
		if(state){
			pb.setCompleteurinetestamount(1000);
		
		}
		
		if(state1){
			pb.setCompletebloodtestamount(2000);
		}
		System.out.println(pb.getSugartestamount());
		if(state2){
			pb.setSugartestamount(500);
		}
		
		if(state3){
			pb.setWbctestamount(300);
		}
		
		
		
		
		
		PatientRegistrationDAO ri=new PatientRegistrationDAO();
		ri.PatientRegistration(pb);
		

		RequestDispatcher rd=request.getRequestDispatcher("payment.jsp");
		request.setAttribute("patient", pb);
		rd.forward(request, response);
	}

}
