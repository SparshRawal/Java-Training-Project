package com.amdocs.project.dao;

import com.amdocs.project.model.Admin;

public interface AdminDAO {
	boolean create();
    boolean display();
    boolean saveAdmin(Admin admin);
    boolean delete(int adminid);
}
