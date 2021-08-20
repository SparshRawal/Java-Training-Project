package com.amdocs.project.model;

public class Course {
    private String Course_name;
    private int Course_ID;
    private String Course_Resource;
    private String Course_Desc;
    private int Course_Fee;

    private Course(){}

    public Course(String course_name, int course_ID, String course_Resource, String course_Desc, int course_Fee) {
        Course_name = course_name;
        Course_ID = course_ID;
        Course_Resource = course_Resource;
        Course_Desc = course_Desc;
        Course_Fee = course_Fee;
    }

    public String getCourse_name() {
        return Course_name;
    }

    public void setCourse_name(String course_name) {
        Course_name = course_name;
    }

    public int getCourse_ID() {
        return Course_ID;
    }

    public void setCourse_ID(int course_ID) {
        Course_ID = course_ID;
    }

    public String getCourse_Resource() {
        return Course_Resource;
    }

    public void setCourse_Resource(String course_Resource) {
        Course_Resource = course_Resource;
    }

    public String getCourse_Desc() {
        return Course_Desc;
    }

    public void setCourse_Desc(String course_Desc) {
        Course_Desc = course_Desc;
    }

    public int getCourse_Fee() {
        return Course_Fee;
    }

    public void setCourse_Fee(int course_Fee) {
        Course_Fee = course_Fee;
    }
}
