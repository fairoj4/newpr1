package daoimplementation;
import beans.RegistrationBean;
import interfaces.RegistrationInterface;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import utility.GetDBConnection;

public class RegistrationImpl implements RegistrationInterface{

		
	public void Registration(RegistrationBean rb)
	{
		Connection con=null;
		con=GetDBConnection.getDBConnection();
		
		try
		{
			String sql="insert into diasignup values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
                        ps.setString(1,rb.getUserName());
			ps.setString(2,rb.getPassword());
                        
			
			ps.executeUpdate();
			System.out.println("Values inserted");
                       // con.setAutoCommit(true);
		}
		catch(SQLException e)
		{
		}
		finally
		{
			GetDBConnection.closeDBConnection(con);
		}
	}

}
