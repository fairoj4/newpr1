package controllers;

import beans.Basic;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.LoginService;
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String user1 = request.getParameter("userName");
            String password = request.getParameter("password");
            Basic login=new Basic();
           login.setUserName(user1);
           login.setPassword(password);
           LoginService loginService=new LoginService();
           boolean status=loginService.checkUser(login);
           if(status==true){
              
             HttpSession session=request.getSession(true);
             session.setMaxInactiveInterval(300); 
              RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
             session.setAttribute("user", login);
        	   rd.forward(request, response);
              }
           else{
        	  
              request.getRequestDispatcher("Error.jsp").forward(request, response);
              }            }     
            finally { 
            out.close();
        }
	}
}

