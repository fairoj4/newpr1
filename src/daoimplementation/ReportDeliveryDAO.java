package daoimplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.GenerateReportBean;
import utility.GetDBConnection;

public class ReportDeliveryDAO {
	
	public /*GenerateReportBean*/ int TestDisplay1(GenerateReportBean grb) throws SQLException{
		System.out.println("Got in...");
		
		int val =0;
		
		GenerateReportBean td=null;
		ResultSet rs;
		
		Connection con=GetDBConnection.getDBConnection();
		
		System.out.println("connection established");
		
			//String sql="select * from report_table where Patientid=";
			//System.out.println("hi");
			PreparedStatement ps=con.prepareStatement("select * from report_table where id=?");
			System.out.println(grb.getPatientId());
			ps.setString(1,grb.getPatientId());
			rs=ps.executeQuery();
		if(rs.next())
		{
			val=1;
		}
		else
			{
				val=0;
			}
		System.out.println(val);
				return val;
			
				
				/*td.setCompleteurineTest((String)rs.getString(1));
				System.out.println("hi");
				td.setCompletebloodTest((String)rs.getString(2));
				td.setSugarTest((String)rs.getString(3));
				td.setWbcTest((String)rs.getString(4));*/
				
			
			
		
		
	}
}
