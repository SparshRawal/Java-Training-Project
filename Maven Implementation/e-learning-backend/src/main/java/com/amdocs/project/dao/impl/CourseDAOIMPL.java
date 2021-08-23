package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Course;
import com.amdocs.project.model.User;

import java.sql.*;
import java.util.ArrayList;

public class CourseDAOIMPL implements CourseDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table course ( course_id int primary key, c_name varchar(100),c_desp varchar(100), c_fees varchar(100),c_resource varchar(100))";
        try{
            Statement stmt=conn.createStatement();
            stmt.executeUpdate(query);
            return true;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean display() {
        String display="select * from course";
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
                int c_fee=data.getInt(4);
                int c_ID=data.getInt(1);
                String c_name=data.getNString(2);
                String c_desp=data.getNString(3);
                String c_resource=data.getNString(5);
                System.out.println("Course_ID : "+c_ID+"\tCourse Name : "+c_name+"\tCourse_desp : "+c_desp+"\tCourse_Fees : "+c_fee+"\tCourse Resource : "+c_resource);
            }
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean saveCourse(Course course) {
        String insert = "insert into course(c_name,c_desp,c_fees,c_resource) values(?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(1,course.getCourse_name());
            ps.setNString(2,course.getCourse_Desc());
            ps.setInt(3,course.getCourse_Fee());
            ps.setNString(4,course.getCourse_Resource());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int courseid) {
        String query="delete from course where course_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,courseid);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    @Override
    public Course GetCourse(int Course_ID) {
    	
        String query="select c_name,c_desp,c_fees,c_resource from course where course_id=?";
        try{
        	PreparedStatement ps= conn.prepareStatement(query);
        	ps.setInt(1, Course_ID);
        	ResultSet data=ps.executeQuery();
            data.next();
            Course RetrievedCourse=new Course(data.getNString(1),data.getNString(4),data.getNString(2),data.getInt(3));
            return RetrievedCourse;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public ArrayList<Course> GetAllCourses() {
        String display="select * from course";
        ArrayList<Course> CourseList=new ArrayList<Course>();
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
            	int Course_ID=data.getInt(1);
                String name=data.getNString(2);
                int Fee=data.getInt(4);
                String Desc=data.getNString(3);
                String Resource=data.getNString(5);
                Course course = new Course(Course_ID,name,Desc,Fee,Resource);
                CourseList.add(course);
                
            }
            return CourseList;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return CourseList;
    }
    @Override
    public boolean Update(int courseid,Course course) {
        String query="Update course set c_name=?,c_desp=?,c_fees=?,c_resource=? where course_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setNString(1,course.getCourse_name());
            ps.setNString(2,course.getCourse_Desc());
            ps.setInt(3,course.getCourse_Fee());
            ps.setNString(4,course.getCourse_Resource());
            ps.setInt(5,courseid);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}

