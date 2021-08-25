package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.ContactDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Contact;

import java.sql.*;
import java.util.ArrayList;

public class ContactDAOIMPL implements ContactDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table contact(user_id int references user , name varchar(30), Email varchar(20), Phone_no int8, Message varchar(20), contact_id int primary key auto_increment)";
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
    public Contact GetContact(int contact_id) {
        String display="select * from contact where contact_id=?";
        Contact contact=null;
        try{
        	PreparedStatement ps= conn.prepareStatement(display);
        	ps.setInt(1,contact_id);
            ResultSet data=ps.executeQuery();
            data.next();
            
                long phone=data.getLong(4);
                int User_ID=data.getInt(1);
                String name=data.getNString(2);
                String email=data.getNString(3);
                String message=data.getNString(5);
                int contact_ID=data.getInt(6);
                contact=new Contact(User_ID, contact_ID, email, name, phone, message);
                System.out.println("User_ID : "+User_ID+"\tName : "+name+"\tEmail : "+email+"\tPhone No : "+phone+"\tMessage : "+message+"\tContact_ID : "+contact_ID);
            
            return contact;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return contact;
    }
    @Override
    public ArrayList<Contact> GetContacts(int user_id)
    {
    	ArrayList<Contact> C_ID=new ArrayList<Contact>();
    	String query = "select * from contact where User_ID=?";
try{
        	
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,user_id);
            ResultSet data=ps.executeQuery();
            while (data.next()) {
            	long phone=data.getLong(4);
                int User_ID=data.getInt(1);
                String name=data.getNString(2);
                String email=data.getNString(3);
                String message=data.getNString(5);
                int contact_ID=data.getInt(6);
                Contact contact=new Contact(User_ID, contact_ID, email, name, phone, message);
            	C_ID.add(contact);
            }   
            return C_ID;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
		return C_ID;
    }
    @Override
    public boolean saveContact(Contact contact) {
        String insert = "insert into contact(User_ID,Name,Email,Phone_no,Message) values(?,?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(2,contact.getName());
            ps.setInt(1,contact.getUser_ID());
            ps.setNString(3,contact.getEmail());
            ps.setLong(4,contact.getPhone());
            ps.setNString(5,contact.getMessage());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int contactid) {
        String query="delete from admin where admin_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,contactid);
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}
