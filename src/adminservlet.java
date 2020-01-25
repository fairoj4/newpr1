import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class for Servlet: adminservlet
 *
 */
 public class adminservlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public adminservlet() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("userid");
		String pwd=request.getParameter("password");
		
		if(LoginVal.validate(uname,pwd)){
			response.sendRedirect("adminindex.jsp");
		}
		else
		{
		
			RequestDispatcher rd=request.getRequestDispatcher("adminlogin.html?msg:entered invalid credentials");
			rd.forward(request, response);
			System.out.println("invalid credentials");
		}
		out.close();
	}   	  	    
}