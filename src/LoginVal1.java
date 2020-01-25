import java.sql.*;
import java.util.*;
public class LoginVal1 {
	public static boolean validate(String uname1,String pwd1){
		boolean status=false;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
			PreparedStatement ps=con.prepareStatement( "select * from vendorlogin where user_id=? and password=?");  
			ps.setString(1,uname1);  
			ps.setString(2,pwd1);  
			      
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