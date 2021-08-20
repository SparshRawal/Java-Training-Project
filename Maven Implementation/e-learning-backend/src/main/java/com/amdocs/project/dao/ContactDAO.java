package com.amdocs.project.dao;


import com.amdocs.project.model.Contact;

public interface ContactDAO {
    boolean create();
    boolean display();
    boolean saveContact(Contact contact);
    boolean delete(int contactid);
}
