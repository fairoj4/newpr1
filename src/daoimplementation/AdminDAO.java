package daoimplementation;

import beans.AdminBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;

import utility.GetDBConnection;

public class AdminDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public boolean checkUser(AdminBean user){
    	Connection con=null;
        String username1 =user.getUserName();
        String password1 = user.getPassword();
       
       try {
           con =GetDBConnection .getDBConnection();           
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery("select * from admin1");
           while (rs.next()) {
        	  // String role=rs.getString(3);
         if((username1.equalsIgnoreCase(rs.getString("UserName")))&&(password1.equalsIgnoreCase(rs.getString("Password")))){
            return  true;
           }      
           }    
       }
          catch (Exception e) {
       }
      return false; 
   } 
}