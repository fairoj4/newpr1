package controllers;

import beans.RegistrationBean;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimplementation.RegistrationImpl;


public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
     
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("abcd");
		RegistrationBean rb=new RegistrationBean();
		
                rb.setUserName(request.getParameter("username"));
                rb.setPassword(request.getParameter("password"));
                
		
		
		RegistrationImpl ri=new RegistrationImpl();
		ri.Registration(rb);
		
		RequestDispatcher rd=request.getRequestDispatcher("UserRegistrationSuccessfull.jsp");
		request.setAttribute("user", rb);
		rd.forward(request, response);
	}

//<editor-fold defaultstate="collapsed" desc="comment">
}
//</editor-fold>
