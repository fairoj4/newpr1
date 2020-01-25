package daoimplementation;

import beans.PatientBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import utility.GetDBConnection;

public class PatientRegistrationDAO {
	Connection con = null;
	public void PatientRegistration(PatientBean pb) {
		
		con = GetDBConnection.getDBConnection();
		System.out.println("In Patient registration");
		System.out.println(con);
		try {
			String sql = "insert into patient_register(fname,lname,gender,age,doctor,APPOINTMENTTIME,APPOINTMENTDATE,EMAILID,MOBILENO,PATIENT_ID ) values(?,?,?,?,?,?,?,?,?,?)";
			String sql1 = "insert into test_register values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			PreparedStatement ps1 = con.prepareStatement(sql1);
			System.out.println(pb.getLname());
			ps.setString(1, pb.getFname());
			ps.setString(2, pb.getLname());
			ps.setString(3, pb.getGender());
			ps.setString(4, pb.getAge());
			ps.setString(5, pb.getDoctor());
			ps.setString(6, pb.getAppointmentTime());
			ps.setString(7, pb.getAppointmentDate());
			ps.setString(8, pb.getEmailid());
			ps.setString(9, pb.getMobileNo());
			ps.setString(10, pb.getPatientId());
			

			/*if (pb.getTest1() == null) {
				ps1.setString(1, null);
			} else {
				ps1.setString(1, pb.getTest1());
			}

			if (pb.getTest2() == null) {
				ps1.setString(2, null);
			} else {
				ps1.setString(2, pb.getTest2());
			}

			if (pb.getTest3() == null) {
				ps1.setString(3, null);
			} else {
				ps1.setString(3, pb.getTest3());
			}

			if (pb.getTest4() == null) {
				ps1.setString(4, null);
			} else {
				ps1.setString(4, pb.getTest4());
			}
			*
			*/
			ps.executeQuery();
			System.out.println("inserted1 successfully");
			
			ps1.setString(1, pb.getTest1());
			ps1.setString(2, pb.getTest2());
			ps1.setString(3, pb.getTest3());
			ps1.setString(4, pb.getTest4());
			ps1.setString(5, pb.getPatientId());
			
			

			ps1.executeQuery();
			System.out.println("inserted2 successfully");
			
			
			PreparedStatement ps2 = con.prepareStatement("commit");
			ps2.executeQuery();
			


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			GetDBConnection.closeDBConnection(con);
		}
	}

}
