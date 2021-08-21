package com.amdocs.project.dao;

import java.util.*;

public interface UserCourseConnectorDAO 
{
	public ArrayList<Integer> GetEnrolledCourses(int User_ID);
	public boolean EnrollCourse(int User_ID,int Course_ID);
}
