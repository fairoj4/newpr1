package daoimplementation;

import beans.GenerateReportBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import utility.GetDBConnection;

public class GenerateReportDAO {
	public void TestDisplay1(GenerateReportBean grb){
		System.out.println("Got in...");
		
		
		Connection con=GetDBConnection.getDBConnection();
		
		System.out.println("connection established");
		try
		{
			String sql="insert into report_table values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, grb.getPatientId());
			ps.setString(2, grb.getCompleteurineTest());
			ps.setString(3,grb.getCompletebloodTest());
			ps.setString(4,grb.getSugarTest());
			ps.setString(5,grb.getWbcTest());
			
			
			ps.executeUpdate();
			System.out.println("values inserted");

			
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
