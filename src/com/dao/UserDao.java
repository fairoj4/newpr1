package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.User;

public class UserDao {

public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
		con.setAutoCommit(false);
	}catch(Exception e){System.out.println(e);}
	return con;
}

public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into vendorlogin(user_id,password,vendor_name,phone_no,email) values(?,?,?,?,?)");
		ps.setInt(1,u.getUserid());
		ps.setString(2,u.getPassword());
		ps.setString(3,u.getVendorname());
		ps.setString(4,u.getPhoneno());
		ps.setString(5,u.getEmail());
		status=ps.executeUpdate();
		con.commit();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int update(User u){
	int status=0;
	try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update vendorlogin set password=?,vendor_name=?,phone_no=?,email=? where user_id=?");
			ps.setString(1,u.getPassword());
			ps.setString(2,u.getVendorname());
			ps.setString(3,u.getPhoneno());
			ps.setString(4,u.getEmail());
			ps.setInt(5,u.getUserid());
			status=ps.executeUpdate();
			con.commit();
			con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int delete(User u){
	int status=0;
	try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from vendorlogin where user_id=?");
			ps.setInt(1,u.getUserid());
			status=ps.executeUpdate();
			con.commit();
			con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from vendorlogin");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				u.setUserid(rs.getInt("user_id"));
				u.setPassword(rs.getString("password"));
				u.setVendorname(rs.getString("vendor_name"));
				u.setPhoneno(rs.getString("phone_no"));
				u.setEmail(rs.getString("email"));
				list.add(u);
				
			}
			con.commit();
			con.close();
		}catch(Exception e){
				System.out.println(e);
			}
			return list;
}
public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from vendorlogin where user_id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
				u=new User();
				u.setUserid(rs.getInt("user_id"));
				u.setPassword(rs.getString("password"));
				u.setVendorname(rs.getString("vendor_name"));
				u.setPhoneno(rs.getString("phone_no"));
				u.setEmail(rs.getString("email"));
		}
		con.commit();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
