package com.controller;
import java.sql.*;

import com.dataObjects.Instructor;
import com.dbconnectivity.DBCon;

public class InstructorController {
	private Instructor instructor;
	private DBCon dbConnectivity;
	
	public InstructorController() throws ClassNotFoundException, SQLException{
		instructor=new Instructor();
		dbConnectivity=new DBCon();
	}
	
	
	public void registerInstructor(Instructor instructor){
		Connection con=dbConnectivity.getConnection();
		Statement stmt=dbConnectivity.getStmt();
		ResultSet rs;
		String sql="INSERT INTO instructor(fname,lname,uname,email,psw)"
				+ "VALUES(?,?,?,?,?);";
		try{
			PreparedStatement preparedStmt=con.prepareStatement(sql);
			preparedStmt.setString(1, instructor.getFname());
			preparedStmt.setString(2, instructor.getLname());
			preparedStmt.setString(3, instructor.getUname());
			preparedStmt.setString(4, instructor.getEmail());
			preparedStmt.setString(5, instructor.getPsw());
			preparedStmt.execute();
			dbConnectivity.closeCon();
			dbConnectivity.closeStmt();
		}catch(Exception e){
			//handle Exception
			}
		}
	
	public boolean loginInstructor(String uname, String psw) throws SQLException{
      //1.Get the data from database
		boolean existed=false;
		String unameIns;
		String pswIns;
		Statement stmt=dbConnectivity.getStmt();
		ResultSet rs;
		String sql="Select uname,psw from instructor where uname='"+uname+"'"
				+ "AND psw='"+psw+"'";
		rs=stmt.executeQuery(sql);
		if(rs.next()){
			existed=true;
		}
		dbConnectivity.closeCon();
		dbConnectivity.closeStmt();
		 
		return existed;
	}

}
