package daoimplementation;


import beans.Basic;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import utility.GetDBConnection;
public class LoginDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public boolean checkUser(Basic user){
    	Connection con=null;
        boolean status=false;
        String username1 =user.getUserName();
        String password1 =user.getPassword();
       System.out.println("insertUser of LoginDAO class....");
       try {
           con =GetDBConnection .getDBConnection();           
           //Statement st = con.createStatement();
           PreparedStatement pst=con.prepareStatement("select * from diasignup where username=? and password=?");
           pst.setString(1,username1);
           pst.setString(2,password1);
           ResultSet rs = pst.executeQuery();
            //java.sql.Statement st = con.createStatement();
//           
          // ResultSet rs = st.executeQuery("select *from diasignup where username=? and password=?");
           if(rs.next()){
               status=true;
               return status;
           }    
           else 
        	   return false;
       }
          catch (Exception e) {
       }
      return false; 
   }           
}