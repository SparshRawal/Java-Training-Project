package com.amdocs.project.dao;


import java.util.ArrayList;

import com.amdocs.project.model.Contact;

public interface ContactDAO {
    boolean create();
    Contact GetContact(int contact_id);
    boolean saveContact(Contact contact);
    boolean delete(int contactid);
    ArrayList<Contact> GetContacts(int user_id);
}
