package utility;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetDBConnection {

	
		public static Connection getDBConnection()
		{
			Connection con=null;
			
			String url="jdbc:oracle:thin:@hstslc015:1521:elp";
			String username="elite0001";
			String password="techM123$";
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@hstslc015:1521:elp","elite0001","techm123$");
				System.out.println("connected");
				
				/*try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				con=DriverManager.getConnection("jdbc:odbc:batch1098","","");*/
			}
			catch(ClassNotFoundException cnfe)
			{
				cnfe.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return con;
		}
		public  static void closeDBConnection(Connection con)
		{
			try
			{
				if(con!=null)
					con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}

	}

