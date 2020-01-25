

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: employeeservlet1
 *
 */
 public class employeeservlet1 extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	 static final long serialVersionUID = 1L;
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public employeeservlet1() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname1=request.getParameter("username");
		String pwd1=request.getParameter("password");
		HttpSession sess= request.getSession();
		sess.setAttribute("username", uname1);
		sess.setAttribute("password", pwd1);
		
		if(LoginVal2.validate(uname1, pwd1)){
			request.getRequestDispatcher("emphome.jsp").forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("employeelogin.html");
			rd.forward(request, response);
			System.out.println("invalid credentials");
		}
		out.close();
	}   	  	    
}