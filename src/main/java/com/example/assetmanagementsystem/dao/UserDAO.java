package com.example.assetmanagementsystem.dao;

import com.example.assetmanagementsystem.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class UserDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/db.ohp.asset";
    private String username = "root";
    private String password = "";

    private Connection connection;

    public UserDAO(String jdbcURL, String username, String password) {
        this.jdbcURL = jdbcURL;
        this.username = username;
        this.password = password;
    }

    public void connect() throws SQLException{
        if (connection == null || connection.isClosed()){
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e){
                throw new SQLException(e);
            }
            connection = DriverManager.getConnection(jdbcURL,username,password);
            System.out.println("Connected to Database");
        }
    }

    public void disconnect() throws SQLException{
        if (connection != null && !connection.isClosed()){
            connection.isClosed();
        }
    }

    public void insertUser() throws SQLException{

    }

}
