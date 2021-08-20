package com.amdocs.project.model;

public class Feedback {
    private int Feedback_ID;
    private int User_ID;
    private String Name;
    private String Email;
    private String Feedback;

    private Feedback(){}

    public Feedback(int user_ID, String name, String email, String feedback) {
        User_ID = user_ID;
        Name = name;
        Email = email;
        Feedback = feedback;
    }

    

    public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int user_ID) {
        User_ID = user_ID;
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

    public String getFeedback() {
        return Feedback;
    }

    public void setFeedback(String feedback) {
        Feedback = feedback;
    }
}
