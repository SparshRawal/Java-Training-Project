package com.amdocs.project.dao;

import com.amdocs.project.model.Course;

public interface CourseDAO {
    boolean create();
    boolean display();
    boolean saveCourse(Course course);
    boolean delete(int courseid);
    Course GetCourse(int Course_ID);
}
