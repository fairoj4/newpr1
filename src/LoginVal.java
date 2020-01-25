import java.sql.*;
import java.util.*;
public class LoginVal {
	public static boolean validate(String uname,String pwd){
		boolean status=false;
		try
		{
			Connection con=null; 
			Class.forName("oracle.jdbc.driver.OracleDriver");
		    con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
			PreparedStatement ps=con.prepareStatement( "select * from adminlogin where user_id=? and password=?");  
			ps.setString(1,uname);  
			ps.setString(2,pwd);  
			      
			ResultSet rs=ps.executeQuery();  
			if(rs.next()) 
				status=true;
			else
				
			
			status=false;
		}
		catch(Exception e){System.out.println(e);}  
			return status;
	}
}