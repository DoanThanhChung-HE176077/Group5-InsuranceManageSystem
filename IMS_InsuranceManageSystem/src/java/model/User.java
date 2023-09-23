/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Dell
 */
public class User {
        private String user_id;
         private String fullName;
          private String email;
           private String password;
           private Date  dob;
           private String address;
           private String phoneNumber;
           private String image;
           private int role;

    public User(String user_id, String fullName, String email, String password, Date dob, String address, String phoneNumber, String image, int role) {
        this.user_id = user_id;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.image = image;
        this.role = role;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public User(String user_id, String fullName) {
        this.user_id = user_id;
        this.fullName = fullName;
    }
           
           
           
        
}
