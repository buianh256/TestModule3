package com.example.testmodule3.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Database {
    protected String url;
    protected String username;
    protected String password;
    public static Database instance;

    public Database() {
        this.url = "jdbc:mysql://localhost:3306/module3";
        this.username = "root";
        this.password = "123456";
    }
    public static Database getInstance() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }
    public Connection Connection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
