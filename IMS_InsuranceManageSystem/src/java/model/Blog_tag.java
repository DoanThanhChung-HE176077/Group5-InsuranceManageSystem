/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Blog_tag {
    int bl_tag_id;
    String bl_tag_tagname;

    public Blog_tag() {
    }

    public Blog_tag(int bl_tag_id, String bl_tag_tagname) {
        this.bl_tag_id = bl_tag_id;
        this.bl_tag_tagname = bl_tag_tagname;
    }

    public int getBl_tag_id() {
        return bl_tag_id;
    }

    public void setBl_tag_id(int bl_tag_id) {
        this.bl_tag_id = bl_tag_id;
    }

    public String getBl_tag_tagname() {
        return bl_tag_tagname;
    }

    public void setBl_tag_tagname(String bl_tag_tagname) {
        this.bl_tag_tagname = bl_tag_tagname;
    }

    @Override
    public String toString() {
        return "Blog_tag{" + "bl_tag_id=" + bl_tag_id + ", bl_tag_tagname=" + bl_tag_tagname + '}';
    }
    
    
}
