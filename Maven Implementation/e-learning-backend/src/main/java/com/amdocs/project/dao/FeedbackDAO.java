package com.amdocs.project.dao;

import java.util.ArrayList;

import com.amdocs.project.model.Feedback;

public interface FeedbackDAO {
    boolean create();
    boolean display();
    boolean saveFeedback(Feedback feedback);
    boolean delete(int feedbackid);
    ArrayList<Integer> AllUserIDs();
    ArrayList<Feedback> GetUserFeedbacks(int User_id);
    Feedback GetUser(int User_id);
   
}
