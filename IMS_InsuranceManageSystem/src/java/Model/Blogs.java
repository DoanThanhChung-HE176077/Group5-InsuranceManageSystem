/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author chun
 */
public class Blogs {
    String bl_id;
    String bl_content;
    String bl_like;
    String bl_img;

    public Blogs() {
    }

    public Blogs(String bl_id, String bl_content, String bl_like, String bl_img) {
        this.bl_id = bl_id;
        this.bl_content = bl_content;
        this.bl_like = bl_like;
        this.bl_img = bl_img;
    }

    public String getBl_id() {
        return bl_id;
    }

    public String getBl_content() {
        return bl_content;
    }

    public String getBl_like() {
        return bl_like;
    }

    public String getBl_img() {
        return bl_img;
    }

    public void setBl_id(String bl_id) {
        this.bl_id = bl_id;
    }

    public void setBl_content(String bl_content) {
        this.bl_content = bl_content;
    }

    public void setBl_like(String bl_like) {
        this.bl_like = bl_like;
    }

    public void setBl_img(String bl_img) {
        this.bl_img = bl_img;
    }

    @Override
    public String toString() {
        return "Blogs{" + "bl_id=" + bl_id + ", bl_content=" + bl_content + ", bl_like=" + bl_like + ", bl_img=" + bl_img + '}';
    }


}
