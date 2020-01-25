package daoimplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.CreateReportBean;
import utility.GetDBConnection;

public class CreateReportDAO {
	int val=1;
	List list=new ArrayList();
	ResultSet rs;
	public int TestDisplay1(CreateReportBean crb) throws SQLException{
		System.out.println("Got in...");
		
		CreateReportBean td=new CreateReportBean();
		Connection con=GetDBConnection.getDBConnection();
		
		
		System.out.println("connection established");
			PreparedStatement ps=con.prepareStatement("select * from test_register where Patientid=?");
	
			ps.setString(1,crb.getPatientid());
			System.out.println("testingggg");

			System.out.println(crb.getPatientid());
		try
		{
			rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			val=0;
		}
	
		finally
		{
			return val;
		}
	
	}
}
