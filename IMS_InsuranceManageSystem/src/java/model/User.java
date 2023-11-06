/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author thant
 */
public class User {
    
     int user_id;
     String user_fullName;
     String user_email;
     String user_password;
     Date user_dob;
     String user_address;
     String user_phoneNum;
     String user_iden;
     String user_image;
     String user_role;
     //add new:
     String user_iden_img;
     String status;
     
    

    public User() {
    }

    public User(int user_id, String user_fullName, String user_email, String user_password, Date user_dob, String user_address, String user_phoneNum, String user_iden, String user_image, String user_role, String user_iden_img, String status) {
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
        this.user_iden_img = user_iden_img;
        this.status = status;
    }
    
    public User(int user_id, String user_fullName, String user_email, String user_password, java.sql.Date user_dob, String user_address, String user_phoneNum, String user_iden, String user_image, String user_role) {
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

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setUser_fullName(String user_fullName) {
        this.user_fullName = user_fullName;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public void setUser_dob(Date user_dob) {
        this.user_dob = user_dob;
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

    public void setUser_image(String user_image) {
        this.user_image = user_image;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }

    public String getUser_iden_img() {
        return user_iden_img;
    }

    public void setUser_iden_img(String user_iden_img) {
        this.user_iden_img = user_iden_img;
    }

    public String getStatus() {
        if(status.equals("Verified")){
            return "Đã xác minh";
        }else {
            return "Chưa xác minh";
        }
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public int getUser_id() {
        return user_id;
    }

    public String getUser_fullName() {
        return user_fullName;
    }

    public String getUser_email() {
        return user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public Date getUser_dob() {
        return  user_dob;
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

    public String getUser_image() {
        return user_image;
    }

    public String getUser_role() {
        if (user_role.equals("staff")){
        return "Nhân viên";}
        else if (user_role.equals("customer"))
            return "Khách hàng";
        else
            return "Admin";
    }

    @Override
    public String toString() {
        return "User{" + "user_id=" + user_id + ", user_fullName=" + user_fullName + ", user_email=" + user_email + ", user_password=" + user_password + ", user_dob=" + user_dob + ", user_address=" + user_address + ", user_phoneNum=" + user_phoneNum + ", user_iden=" + user_iden + ", user_image=" + user_image + ", user_role=" + user_role + ", user_iden_img=" + user_iden_img + ", status=" + getStatus() + '}';
    }


    
    
    
}
