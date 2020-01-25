package daoimplementation;

import beans.TestDisplay;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import utility.GetDBConnection;

public class TestDisplayDAO {
	List list=new ArrayList();
	
	public List TestDisplay(){
		System.out.println("Got in...");
		Connection con=GetDBConnection.getDBConnection();
		
		System.out.println("connection established");
		try
		{
			String sql="select max(testamount) from complete_urine_test ";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				TestDisplay td=new TestDisplay();
				td.setTest1((String)rs.getString(1));
				td.setTest2((String)rs.getString(2));
				td.setTest3((String)rs.getString(3));
				td.setTest4((String)rs.getString(4));
				list.add(td);
			}
			
			

			
		}
		catch(SQLException e)
		{
		}
		finally
		{
		GetDBConnection.closeDBConnection(con);
		}
		return list;
	}
}
