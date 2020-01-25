package daoimplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import utility.GetDBConnection;

public class TestMenuSugarProfileDAO {
	List list=new ArrayList();
	List list1=new ArrayList();
	public List TestMenu(){
		
		Connection con=GetDBConnection.getDBConnection();
		
		
		try
		{
			String sql="select * from sugar_test";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				TestMenuSugarProfileDAO ts=new TestMenuSugarProfileDAO();
				ts.setTestname((String)rs.getString(1));
				ts.setTestamount((String)rs.getString(2));
				list.add(ts);
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
	private void setTestamount(String string) {
		// TODO Auto-generated method stub
		
	}
	private void setTestname(String string) {
		// TODO Auto-generated method stub
		
	}
}
