package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Course;

import java.sql.*;

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
        String insert = "insert into course values(?,?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(2,course.getCourse_name());
            ps.setInt(1,course.getCourse_ID());
            ps.setNString(3,course.getCourse_Desc());
            ps.setInt(4,course.getCourse_Fee());
            ps.setNString(5,course.getCourse_Resource());
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
        String query="delete from admin where admin_id=?";
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
}

