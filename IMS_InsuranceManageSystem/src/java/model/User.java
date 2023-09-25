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

    private int user_id;
    private String user_fullName;
    private String user_email;
    private String user_password;
    private Date user_dob;
    private String user_address;
    private String user_phoneNum;
    private String user_iden;
    private String user_image;
    private String user_role;

    public User(int user_id, String user_fullName, String user_email, String user_password, Date user_dob, String user_address, String user_phoneNum, String user_iden, String user_image, String user_role) {
        this.user_id = user_id;
        this.user_fullName = user_fullName;
        this.user_email = user_email;
        this.user_password = user_password;
        this.user_dob = user_dob;
        this.user_address = user_address;
        this.user_phoneNum = user_phoneNum;
        this.user_iden = user_iden;
        this.user_image = user_image;
        this.user_role = user_role;
    }

    public User() {
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_fullName() {
        return user_fullName;
    }

    public void setUser_fullName(String user_fullName) {
        this.user_fullName = user_fullName;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public Date getUser_dob() {
        return user_dob;
    }

    public void setUser_dob(Date user_dob) {
        this.user_dob = user_dob;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public String getUser_phoneNum() {
        return user_phoneNum;
    }

    public void setUser_phoneNum(String user_phoneNum) {
        this.user_phoneNum = user_phoneNum;
    }

    public String getUser_iden() {
        return user_iden;
    }

    public void setUser_iden(String user_iden) {
        this.user_iden = user_iden;
    }

    public String getUser_image() {
        return user_image;
    }

    public void setUser_image(String user_image) {
        this.user_image = user_image;
    }

    public String getUser_role() {
        return user_role;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }

}
