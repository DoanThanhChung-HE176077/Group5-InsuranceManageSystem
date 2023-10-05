/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Blogs;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chun
 */
public class BlogDAO extends DBContext{
    
    //get list blog
    public ArrayList<Blogs> getAllBlogs() {
        try {
            ArrayList<Blogs> getAll = new ArrayList<>();
            String sql = "select * from Blogs";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String bl_id = rs.getString(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                String bl_like = rs.getString(4);
                String bl_img = rs.getString(5);
                String bl_author = rs.getString(6);
                String bl_creationdate = rs.getString(7);
                int bl_view = rs.getInt(8);
                String bl_status = rs.getString(9);
                getAll.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, bl_author, bl_creationdate, bl_view, bl_status));
            }
            return getAll;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        Blogs bgg = new Blogs();
        ArrayList<Blogs> bg = dao.getAllBlogs();
        for (Blogs blogs : bg) {
            System.out.println(blogs.toString());
        }
    }
    
}
