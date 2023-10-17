/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Blog_type {
    int bl_type_id;
    String bl_type_name;

    public Blog_type() {
    }

    public Blog_type(int bl_type_id, String bl_type_name) {
        this.bl_type_id = bl_type_id;
        this.bl_type_name = bl_type_name;
    }

    public int getBl_type_id() {
        return bl_type_id;
    }

    public String getBl_type_name() {
        return bl_type_name;
    }

    public void setBl_type_id(int bl_type_id) {
        this.bl_type_id = bl_type_id;
    }

    public void setBl_type_name(String bl_type_name) {
        this.bl_type_name = bl_type_name;
    }
    
}
