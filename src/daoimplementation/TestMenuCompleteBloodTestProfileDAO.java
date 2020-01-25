package daoimplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import com.diagnosticcenter.beans.TestMenuWbcProfile;
import utility.GetDBConnection;

public class TestMenuCompleteBloodTestProfileDAO {
	List list=new ArrayList();
	
	public List TestMenu(){
		System.out.println("Got in...");
		Connection con=GetDBConnection.getDBConnection();
		
		System.out.println("connection established");
		try
		{
			String sql="select * from complete_blood_test";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				TestMenuCompleteBloodTestProfileDAO tb=new TestMenuCompleteBloodTestProfileDAO();
				tb.setTestname((String)rs.getString(1));
				tb.setTestamount((String)rs.getString(2));
				list.add(tb);
			}
			
			

			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			GetDBConnection.closeDBConnection(con);
		}
		return list;
	}

	private void setTestamount(String string) {
		// TODO Auto-generated method stub
		
	}

	private void setTestname(String string) {
		// TODO Auto-generated method stub
		
	}
}
