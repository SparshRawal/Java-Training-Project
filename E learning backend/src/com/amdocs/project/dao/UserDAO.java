package com.amdocs.project.dao;

import com.amdocs.project.model.User;

public interface UserDAO {
    boolean create();
    boolean display();
    boolean saveUser(User user);
    boolean delete(int userid);
}
