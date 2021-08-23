package com.amdocs.project.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.dao.UserCourseConnectorDAO;


public class UserCourseConnectorDAOIMPL implements UserCourseConnectorDAO {
	Connection conn= DBUtils.getConn();
	@Override
	public ArrayList<Integer> GetEnrolledCourses(int User_ID)
	{
		ArrayList<Integer> list = new ArrayList<Integer>();
		String query="select course.course_id from user,course,user_course_connector where user.User_ID = user_course_connector.User_ID and course.course_id = user_course_connector.Course_ID and user.User_ID=?";
        try{
        	
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,User_ID);
            ResultSet rs=ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt(1));
            }   
            return list;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
		return list;
	}
	public ArrayList<Integer> GetUnenrolledCourses(int User_ID)
	{
		ArrayList<Integer> list = new ArrayList<Integer>();
		String query=" select course_id "
				+ " from course "
				+ " where course_id not in "
				+ " (select course.course_id "
				+ " from user,course,user_course_connector "
				+ " where user.User_ID = user_course_connector.User_ID "
				+ " and course.course_id = user_course_connector.Course_ID "
				+ " and user.User_ID=?)";
        try{
        	
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,User_ID);
            ResultSet rs=ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt(1));
            }   
            return list;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
		return list;
	}
	@Override
	public boolean EnrollCourse(int User_ID,int Course_ID)
	{
		String query="insert into user_course_connector(User_ID,Course_ID) values(?,?)";
        try{
        	
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,User_ID);
            ps.setInt(2,Course_ID);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
		return false;
	}
	

}
