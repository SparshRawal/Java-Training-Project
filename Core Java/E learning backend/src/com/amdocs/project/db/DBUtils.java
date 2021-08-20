package com.amdocs.project.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
    static String url_name="jdbc:mysql://localhost:3306/JDBC_PROJECT";
    static String user="root";
    static String pass="root";

    private static Connection conn=null;

    private DBUtils(){

    }

    public static Connection getConn() {
        if(conn==null){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn= DriverManager.getConnection(url_name,user,pass);
                return conn;
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return conn;
    }
}

