package daoimplementation;

import beans.TestMenuBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import utility.GetDBConnection;

public class TestMenuCompleteUrineTestProfileDAO {
	List list=new ArrayList();
	List list1=new ArrayList();
	public List TestMenu(){
		
		Connection con=GetDBConnection.getDBConnection();
		
		
		try
		{
			String sql="select * from complete_urine_test";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			
			while(rs.next()){
				TestMenuBean tm=new TestMenuBean();
				tm.setTestname((String)rs.getString(1));
				tm.setTestamount((String)rs.getString(2));
				list.add(tm);
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
