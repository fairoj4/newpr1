package service;

import beans.AdminBean;
import javax.servlet.http.HttpServlet;

import daoimplementation.AdminDAO;

public class AdminService extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	public boolean checkUser(AdminBean user) 
	 {
		 
		 AdminDAO adminDAO=new AdminDAO();
		 return adminDAO.checkUser(user);    
		} 
}
