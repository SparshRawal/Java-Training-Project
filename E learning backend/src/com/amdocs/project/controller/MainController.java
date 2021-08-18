package com.amdocs.project.controller;

import com.amdocs.project.dao.AdminDAO;
import com.amdocs.project.dao.ContactDAO;
import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.dao.FeedbackDAO;
import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.AdminDAOIMPL;
import com.amdocs.project.dao.impl.ContactDAOIMPL;
import com.amdocs.project.dao.impl.CourseDAOIMPL;
import com.amdocs.project.dao.impl.FeedbackDAOIMPL;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.Admin;
import com.amdocs.project.model.Course;
import com.amdocs.project.model.User;

import java.sql.Date;

public class MainController {
    public static void main(String[] args) {
        UserDAO userDAO=new UserDAOIMPL();
//        userDAO.display();
//        String str="2021-08-21";
//        Date date=Date.valueOf(str);
//        User user=new User("Sparsh","sparsh@amdocs.com","ssr123","Navi Mumbai",9702659432L,"img12.jpeg",182,date);
//        userDAO.saveUser(user);
        userDAO.display();
        System.out.println("======================================");
        AdminDAO adminDAO= new AdminDAOIMPL();
//        adminDAO.create();
//        Admin admin = new Admin("Sparsh","sparsh@amdocs.com","ssr123",182);
//        adminDAO.saveAdmin(admin);
        adminDAO.display();
        System.out.println("======================================");
        CourseDAO courseDAO = new CourseDAOIMPL();
        courseDAO.display();
        System.out.println("======================================");
        FeedbackDAO feedbackDAO = new FeedbackDAOIMPL();
        feedbackDAO.display();
        System.out.println("======================================");
        ContactDAO contactDAO= new ContactDAOIMPL();
        contactDAO.display();
        System.out.println("======================================");
    }
}
