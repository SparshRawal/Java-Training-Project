package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.FeedbackDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Feedback;

import java.sql.*;
import java.util.ArrayList;

public class FeedbackDAOIMPL implements FeedbackDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table feedback(user_id int(20) references user1,name varchar(100),email varchar(100),f_id int(20) primary key auto_increment,feedback varchar(100))";
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
        String display="select * from feedback";
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
                int Feedback_ID=data.getInt(4);
                int User_ID=data.getInt(1);
                String name=data.getNString(2);
                String email=data.getNString(3);
                String feedback=data.getNString(5);
                System.out.println("Feedback_ID : "+Feedback_ID+"\tUser_ID : "+User_ID+"\tName : "+name+"\tEmail : "+email+"\tFeedback : "+feedback);
            }
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean saveFeedback(Feedback feedback) {
        String insert = "insert into feedback(user_id,name,email,feedback) values(?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(2,feedback.getName());
            ps.setInt(1,feedback.getUser_ID());
            ps.setNString(3,feedback.getEmail());
            ps.setNString(4,feedback.getFeedback());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public ArrayList<Integer> AllUserIDs() {
    	ArrayList<Integer> UserList=new ArrayList<Integer>();
        String query="select distinct user_id from feedback";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ResultSet rs= ps.executeQuery();
            while(rs.next())
            	UserList.add(rs.getInt(1));
            return UserList;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return UserList;
    }
    @Override
    public ArrayList<Feedback> GetUserFeedbacks(int User_id)
    {
    	ArrayList<Feedback> FeedbackList=new ArrayList<Feedback>();
        String query="select * from feedback where user_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,User_id);
            ResultSet rs= ps.executeQuery();
            while(rs.next())
            {
            	Feedback fb=new Feedback(rs.getInt(1), rs.getNString(2),rs.getNString(3), rs.getInt(4), rs.getNString(5));
            	FeedbackList.add(fb);
            }
            return FeedbackList;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return FeedbackList;
    }
        @Override
        public Feedback GetUser(int User_id)
        {
        	
            String query="select * from feedback where user_id=? limit 1";
            try{
                PreparedStatement ps= conn.prepareStatement(query);
                ps.setInt(1,User_id);
                ResultSet rs= ps.executeQuery();
                rs.next();
                	Feedback fb=new Feedback(rs.getInt(1), rs.getNString(2),rs.getNString(3), rs.getInt(4), rs.getNString(5));
                System.out.println(fb);
                
                return fb;
            }
            catch (SQLException e){
                e.printStackTrace();
            }
            return null;
    }
        
        @Override
        public boolean delete(int feedbackid) {
            String query="delete from admin where admin_id=?";
            try{
                PreparedStatement ps= conn.prepareStatement(query);
                ps.setInt(1,feedbackid);
                ps.executeUpdate();
                return true;
            }
            catch (SQLException e){
                e.printStackTrace();
            }
            return false;
        }
    }

