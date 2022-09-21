package com.example.assetmanagementsystem.model;

import java.time.LocalDate;

public class User {
    private int id;
    private String role;
    private String name;
    private String username;
    private String password;
    private LocalDate created_at;
    private LocalDate updated_at;

    public User(){}

    public User(int id){
        this.id = id;
    }

    public User(int id, String role, String name, String username, String password, LocalDate created_at, LocalDate updated_at) {
        this.id = id;
        this.role = role;
        this.name = name;
        this.username = username;
        this.password = password;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public User(String role, String name, String username, String password, LocalDate created_at, LocalDate updated_at) {
        this.role = role;
        this.name = name;
        this.username = username;
        this.password = password;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public LocalDate getCreated_at() {
        return created_at;
    }

    public void setCreated_at(LocalDate created_at) {
        this.created_at = created_at;
    }

    public LocalDate getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(LocalDate updated_at) {
        this.updated_at = updated_at;
    }
}
