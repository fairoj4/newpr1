package controllers;

import beans.AdminBean;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AdminService;


public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;


    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            String user = request.getParameter("username");
            String password = request.getParameter("password");
            AdminBean login=new AdminBean();
           login.setUserName(user);
           login.setPassword(password);
            
           AdminService loginService=new AdminService();
           boolean status=loginService.checkUser(login);
           if(status==true){
              out.println("Success");
        	   request.getRequestDispatcher("Adminhome.jsp").forward(request, response);
              }
           else{
        	  //out.println("Invalid username or password");
              request.getRequestDispatcher("Error.jsp").forward(request, response);
              }            }     
            finally { 
            out.close();
        }
	}
	}


