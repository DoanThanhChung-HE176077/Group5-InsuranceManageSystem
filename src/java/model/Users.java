/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author thant
 */
public class Users {
    int user_id;
    String user_fullname, user_mail, user_password, user_address, user_phoneNum, user_iden, users_role;
    Date user_dob;

    public Users() {
    }

    public Users(int user_id, String user_fullname, String user_mail, String user_password, String user_address, String user_phoneNum, String user_iden, String users_role, Date user_dob) {
        this.user_id = user_id;
        this.user_fullname = user_fullname;
        this.user_mail = user_mail;
        this.user_password = user_password;
        this.user_address = user_address;
        this.user_phoneNum = user_phoneNum;
        this.user_iden = user_iden;
        this.users_role = users_role;
        this.user_dob = user_dob;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getUser_fullname() {
        return user_fullname;
    }

    public String getUser_mail() {
        return user_mail;
    }

    public String getUser_password() {
        return user_password;
    }

    public String getUser_address() {
        return user_address;
    }

    public String getUser_phoneNum() {
        return user_phoneNum;
    }

    public String getUser_iden() {
        return user_iden;
    }

    public String getUsers_role() {
        return users_role;
    }

    public Date getUser_dob() {
        return user_dob;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }

    public void setUser_mail(String user_mail) {
        this.user_mail = user_mail;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public void setUser_phoneNum(String user_phoneNum) {
        this.user_phoneNum = user_phoneNum;
    }

    public void setUser_iden(String user_iden) {
        this.user_iden = user_iden;
    }

    public void setUsers_role(String users_role) {
        this.users_role = users_role;
    }

    public void setUser_dob(Date user_dob) {
        this.user_dob = user_dob;
    }
    
    
}
