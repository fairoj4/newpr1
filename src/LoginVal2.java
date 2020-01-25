import java.sql.*;
import java.util.*;
public class LoginVal2 {
	public static boolean validate(String uname1,String pwd1){
		boolean status=false;
		try
		{
			System.out.println("inside try");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
			System.out.println("before exec");
			PreparedStatement ps=con.prepareStatement( "select * from employeelogin where user_id=? and password=?");  
			ps.setString(1,uname1);  
			ps.setString(2,pwd1);  
			      
			ResultSet rs=ps.executeQuery(); 
			System.out.println("after exec");
			if(rs.next()) 
				status=true;
			else
				status=false;
		}
		catch(Exception e){System.out.println(e);}  
			return status;
	}
}
