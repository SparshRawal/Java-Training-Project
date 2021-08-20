package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.User;

import java.sql.*;

public class UserDAOIMPL implements UserDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table user(user_id int primary key auto_increment, name varchar(100),phone_no int8, email varchar(100), address varchar(100), reg_date date, password varchar(100), upload_photo long)";
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
        String display="select * from user";
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
                long phone=data.getLong(3);
                int user_ID=data.getInt(1);
                String name=data.getNString(2);
                String email=data.getNString(4);
                String address=data.getNString(5);
                Date date=data.getDate(6);
                String password=data.getNString(7);
                String image=data.getNString(8);
                System.out.println("User_ID : "+user_ID+"\tName : "+name+"\tPhone : "+phone+"\tEmail : "+email+"\tAddress : "+address+"\tAddress : "+address+"\tDate : "+date+"\tPassword : "+password+"\tUpload_Image : "+image);
            }
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean saveUser(User user) {
        String insert = "insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values(?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(1,user.getName());
            ps.setNString(3,user.getEmail());
            ps.setLong(2,user.getPhone());
            ps.setNString(4,user.getAddress());
            ps.setDate(5,user.getDate());
            ps.setNString(6,user.getPassword());
            ps.setNString(7,user.getUpload_Image());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int userid) {
        String query="delete from admin where admin_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,userid);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    @Override
    public User GetDetails(String email,String pass) {
        String query="select User_ID,Name,Phone_No,Email,Address,Reg_Date,Upload_Photo from user where Email=? and Password=? limit 1";
        try{
        	System.out.println(email+" "+pass);
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,pass);
            ResultSet data=ps.executeQuery();
            data.next();
            int user_ID=data.getInt(1);
            String name=data.getNString(2);
            long phone=data.getLong(3);
            String Email=data.getNString(4);
            String address=data.getNString(5);
            Date date=data.getDate(6);
            String image=data.getNString(7);
            System.out.println("User_ID : "+user_ID+"\tName : "+name+"\tPhone : "+phone+"\tEmail : "+email+"\tAddress : "+address+"\tAddress : "+address+"\tDate : "+date+"\tUpload_Image : "+image);
            User login =new User(user_ID,name,Email,address,phone,image,date);
            return login;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
