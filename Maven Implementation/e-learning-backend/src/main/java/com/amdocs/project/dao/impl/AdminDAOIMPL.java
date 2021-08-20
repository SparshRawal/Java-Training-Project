package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.AdminDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Admin;
import com.amdocs.project.model.User;

import java.sql.*;

public class AdminDAOIMPL implements AdminDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table admin (admin_id int8 primary key, name varchar(100),email varchar(100), password varchar(100))";
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
        String display="select * from admin";
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
                int admin_ID=data.getInt(1);
                String name=data.getString(2);
                String email=data.getString(3);
                String password=data.getString(4);
                System.out.println("Admin_ID : "+admin_ID+"\tName : "+name+"\tEmail : "+email+"\tPassword : "+password);
            }
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean saveAdmin(Admin admin) {
        String insert = "insert into admin values(?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(2,admin.getName());
            ps.setInt(1,admin.getAdmin_ID());
            ps.setNString(3,admin.getEmail());
            ps.setNString(4,admin.getPassword());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int adminid) {
        String query="delete from admin where admin_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,adminid);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    @Override
    public Admin GetAdminDetails(int id,String email,String pass) {
        String query="select Admin_ID,Name,Email from admin where Admin_ID=? and Email=? and Password=? limit 1";
        try{
        	System.out.println(email+" "+pass);
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.setString(2,email);
            ps.setString(3,pass);
            ResultSet data=ps.executeQuery();
            data.next();
            int admin_ID=data.getInt(1);
            String name=data.getNString(2);
            String Email=data.getNString(3);
            System.out.println("User_ID : "+admin_ID+"\tName : "+name+"\tEmail : "+email);
            Admin AdminLogin =new Admin(admin_ID,name,Email);
            return AdminLogin;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
