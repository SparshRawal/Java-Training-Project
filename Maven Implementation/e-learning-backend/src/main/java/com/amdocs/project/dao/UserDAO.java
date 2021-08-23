package com.amdocs.project.dao;

import java.util.ArrayList;

import com.amdocs.project.model.User;

public interface UserDAO {
    boolean create();
    boolean display();
    boolean saveUser(User user);
    boolean delete(int userid);
    User GetDetails(String email,String pass);
    ArrayList<User> GetAllUsers();
}
