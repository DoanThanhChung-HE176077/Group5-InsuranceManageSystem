/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Blogs {

    int bl_id;
    String bl_title;
    String bl_content;
    int bl_like;
    String bl_img;
    int user_id;
    String bl_creationdate;
    String  bl_type_name ;
    String bl_tag_tagname;
    int bl_view;
    String bl_status;

    public Blogs() {
    }
    
    public Blogs(int bl_id, String bl_title, String bl_content, int bl_like, String bl_img, int user_id, String bl_creationdate, String bl_type_name, String bl_tag_tagname, int bl_view, String bl_status) {
        this.bl_id = bl_id;
        this.bl_title = bl_title;
        this.bl_content = bl_content;
        this.bl_like = bl_like;
        this.bl_img = bl_img;
        this.user_id = user_id;
        this.bl_creationdate = bl_creationdate;
        this.bl_type_name = bl_type_name;
        this.bl_tag_tagname = bl_tag_tagname;
        this.bl_view = bl_view;
        this.bl_status = bl_status;
    }

    public int getBl_id() {
        return bl_id;
    }

    public void setBl_id(int bl_id) {
        this.bl_id = bl_id;
    }

    public String getBl_title() {
        return bl_title;
    }

    public void setBl_title(String bl_title) {
        this.bl_title = bl_title;
    }

    public String getBl_content() {
        return bl_content;
    }

    public void setBl_content(String bl_content) {
        this.bl_content = bl_content;
    }

    public int getBl_like() {
        return bl_like;
    }

    public void setBl_like(int bl_like) {
        this.bl_like = bl_like;
    }

    public String getBl_img() {
        return bl_img;
    }

    public void setBl_img(String bl_img) {
        this.bl_img = bl_img;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getBl_creationdate() {
        
        return bl_creationdate;
    }

    public void setBl_creationdate(String bl_creationdate) {
        this.bl_creationdate = bl_creationdate;
    }

    public String getBl_type_name() {
        return bl_type_name;
    }

    public void setBl_type_name(String bl_type_name) {
        this.bl_type_name = bl_type_name;
    }

    public String getBl_tag_tagname() {
        return bl_tag_tagname;
    }

    public void setBl_tag_tagname(String bl_tag_tagname) {
        this.bl_tag_tagname = bl_tag_tagname;
    }

    public int getBl_view() {
        return bl_view;
    }

    public void setBl_view(int bl_view) {
        this.bl_view = bl_view;
    }

    public String getBl_status() {
        if(bl_status.equals("Active")){
            return "Có hiệu lực";
        }else {
            return "Vô hiệu hóa";
        }
    }

    public void setBl_status(String bl_status) {
        this.bl_status = bl_status;
    }

    @Override
    public String toString() {
        return "Blogs{" + "bl_id=" + bl_id + ", bl_title=" + bl_title + ", bl_content=" + bl_content + ", bl_like=" + bl_like + ", bl_img=" + bl_img + ", user_id=" + user_id + ", bl_creationdate=" + bl_creationdate + ", bl_type_name=" + bl_type_name + ", bl_tag_tagname=" + bl_tag_tagname + ", bl_view=" + bl_view + ", bl_status=" + bl_status + '}';
    }

   
    




    
}
