package com.amdocs.project.model;

import java.sql.Date;

public class User {
    private String Name;
    private String Email;
    private String Password;
    private String Address;
    private long Phone;
    private String Upload_Image;
    private int User_ID;
    private Date date;

    private User(){}

    public User(String name, String email, String password, String address, long phone, String upload_Image, int user_ID, Date date) {
        Name = name;
        Email = email;
        Password = password;
        Address = address;
        Phone = phone;
        Upload_Image = upload_Image;
        User_ID = user_ID;
        this.date = date;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public long getPhone() {
        return Phone;
    }

    public void setPhone(long phone) {
        Phone = phone;
    }

    public String getUpload_Image() {
        return Upload_Image;
    }

    public void setUpload_Image(String upload_Image) {
        Upload_Image = upload_Image;
    }

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int user_ID) {
        User_ID = user_ID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
