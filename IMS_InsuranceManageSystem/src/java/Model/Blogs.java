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
    String bl_title;
    String bl_content;
    String bl_like;
    String bl_img;
    String bl_author;
    String bl_creationdate;
    int bl_tag_id;
    int bl_view;
    String bl_status;

    public Blogs() {
    }

    public Blogs(String bl_id, String bl_title, String bl_content, String bl_like, String bl_img, String bl_author, String bl_creationdate, int bl_tag_id, int bl_view, String bl_status) {
        this.bl_id = bl_id;
        this.bl_title = bl_title;
        this.bl_content = bl_content;
        this.bl_like = bl_like;
        this.bl_img = bl_img;
        this.bl_author = bl_author;
        this.bl_creationdate = bl_creationdate;
        this.bl_tag_id = bl_tag_id;
        this.bl_view = bl_view;
        this.bl_status = bl_status;
    }

    public int getBl_tag_id() {
        return bl_tag_id;
    }

    public void setBl_tag_id(int bl_tag_id) {
        this.bl_tag_id = bl_tag_id;
    }



    public int getBl_view() {
        return bl_view;
    }

    public void setBl_view(int bl_view) {
        this.bl_view = bl_view;
    }

    public String getBl_id() {
        return bl_id;
    }

    public String getBl_title() {
        return bl_title;
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

    public String getBl_author() {
        return bl_author;
    }

    public String getBl_creationdate() {
        return bl_creationdate;
    }

    public String getBl_status() {
        return bl_status;
    }

    public void setBl_id(String bl_id) {
        this.bl_id = bl_id;
    }

    public void setBl_title(String bl_title) {
        this.bl_title = bl_title;
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

    public void setBl_author(String bl_author) {
        this.bl_author = bl_author;
    }

    public void setBl_creationdate(String bl_creationdate) {
        this.bl_creationdate = bl_creationdate;
    }

    public void setBl_status(String bl_status) {
        this.bl_status = bl_status;
    }

    @Override
    public String toString() {
        String tableFormat = String.format(
                "Blogs{\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "| %-12s | %s\n"
                + "}",
                "bl_id", bl_id,
                "bl_title", bl_title,
                "bl_content", bl_content,
                "bl_like", bl_like,
                "bl_img", bl_img,
                "bl_author", bl_author,
                "bl_creationdate", bl_creationdate,
                "bl_tag_id", bl_tag_id,
                "bl_view", bl_view,
                "bl_status", bl_status
        );

        return tableFormat;

    }



    
}
