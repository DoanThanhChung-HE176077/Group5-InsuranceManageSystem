/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author chun
 */
public class NewBl extends Blogs{
    String usernameString;

    public NewBl() {
    }

    public NewBl(String usernameString, int bl_id, String bl_title, String bl_content, int bl_like, String bl_img, int user_id, String bl_creationdate, String bl_type_name, String bl_tag_tagname, int bl_view, String bl_status) {
        super(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_view, bl_status);
        this.usernameString = usernameString;
    }



    public String getUsernameString() {
        return usernameString;
    }

    public void setUsernameString(String usernameString) {
        this.usernameString = usernameString;
    }
     
}
