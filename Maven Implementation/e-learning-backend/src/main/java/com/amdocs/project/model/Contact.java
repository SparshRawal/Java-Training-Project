package com.amdocs.project.model;

public class Contact {
    private int User_ID;
    private int Contact_ID;
    private String Email;
    private String Name;
    private long Phone;
    private String message;

    private Contact(){}

    public Contact(int user_ID, String email, String name, long phone, String message) {
        User_ID = user_ID;
        Email = email;
        Name = name;
        Phone = phone;
        this.message = message;
    }
    public Contact(int user_ID,int contact_ID, String email, String name, long phone, String message) {
    	User_ID = user_ID;
        Email = email;
        Name = name;
        Phone = phone;
        this.message = message;
        Contact_ID=contact_ID;
    }
    
    public int getContact_ID() {
		return Contact_ID;
	}

	public void setContact_ID(int contact_ID) {
		Contact_ID = contact_ID;
	}

	public int getUser_ID() {
        return User_ID;
    }

    public void setUser_ID(int user_ID) {
        User_ID = user_ID;
    }


    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public long getPhone() {
        return Phone;
    }

    public void setPhone(long phone) {
        Phone = phone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
