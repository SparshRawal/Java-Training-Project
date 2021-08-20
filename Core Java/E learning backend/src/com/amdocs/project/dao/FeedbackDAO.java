package com.amdocs.project.dao;

import com.amdocs.project.model.Feedback;

public interface FeedbackDAO {
    boolean create();
    boolean display();
    boolean saveFeedback(Feedback feedback);
    boolean delete(int feedbackid);
}
