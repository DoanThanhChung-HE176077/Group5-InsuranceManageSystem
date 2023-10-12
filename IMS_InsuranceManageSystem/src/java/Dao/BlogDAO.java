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
public class BlogDAO extends DBContext {

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
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                int bl_type_id = rs.getInt(8);
                int bl_tag_id = rs.getInt(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);

                getAll.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_id, bl_tag_id, bl_view, bl_status));
            }
            return getAll;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //get top 5 blog hving view cao
    public ArrayList<Blogs> getTop5Blogs() {
        try {
            ArrayList<Blogs> getTop5Blogs = new ArrayList<>();
            String sql = "select top 5 * from Blogs order by bl_view desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String bl_id = rs.getString(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                int bl_type_id = rs.getInt(8);
                int bl_tag_id = rs.getInt(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);
                
                getTop5Blogs.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_id, bl_tag_id, bl_view, bl_status));

            }
            return getTop5Blogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //get top 15 blog hving view cao
    public ArrayList<Blogs> getTop15Blogs() {
        try {
            ArrayList<Blogs> getTop15Blogs = new ArrayList<>();
            String sql = "select top 5 * from Blogs order by bl_view desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String bl_id = rs.getString(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                int bl_type_id = rs.getInt(8);
                int bl_tag_id = rs.getInt(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);

                getTop15Blogs.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_id, bl_tag_id, bl_view, bl_status));

            }
            return getTop15Blogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

//    public void addBlog(Blogs blog) {
//        try {
//            String sql = "INSERT INTO [dbo].[Blogs]\n"
//                    + "           ([bl_title]\n"
//                    + "           ,[bl_content]\n"
//                    + "           ,[bl_like]\n"
//                    + "           ,[bl_img]\n"
//                    + "           ,[bl_author]\n"
//                    + "           ,[bl_creationdate]\n"
//                    + "           ,[bl_tag_id]\n"
//                    + "           ,[bl_view]\n"
//                    + "           ,[bl_status])\n"
//                    + "     VALUES\n"
//                    + "           (?, ?, ?, ?, ?, ?, ?, ?, ?)";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, blog.getBl_title());
//            ps.setString(2, blog.getBl_content());
//            ps.setString(3, blog.getBl_like());
//            ps.setString(4, blog.getBl_img());
//            ps.setString(5, blog.getBl_author());
//            ps.setString(6, blog.getBl_creationdate());
//            ps.setInt(7, blog.getBl_tag_id());
//            ps.setInt(8, blog.getBl_view());
//            ps.setString(9, blog.getBl_status());
//        } catch (SQLException e) {
//            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, e.getMessage());
//        }
//    }
    
    //create new blog
     public boolean createBlog(
            String bl_title,
            String bl_content,
            int bl_like,
            String bl_img,
            int user_id,
            String bl_creationdate,
            int bl_type_id,
            int bl_tag_id,
            int bl_view,
            String bl_status) {
        try {
            String sql = "insert into Blogs values((SELECT COALESCE(MAX(bl_id), 0) from Blogs)+1,?,?,?,?,?,?,?,?,?,?) ;";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, bl_title);
            pstm.setString(2, bl_content);
            pstm.setInt(3, bl_like);
            pstm.setString(4, bl_img);
            pstm.setInt(5, user_id);
            pstm.setString(6, bl_creationdate);
            pstm.setInt(7, bl_type_id);
            pstm.setInt(8, bl_tag_id);
            pstm.setInt(9, bl_view);
            pstm.setString(10, bl_status);
            
            pstm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

//    public int getLastId() {
//        int lastId;
//        try {
//            String strSQL = "SELECT top 1 bl_id\n"
//                    + "  FROM [dbo].[Blogs]\n"
//                    + "  ORDER BY bl_id DESC";
//            PreparedStatement pstm = connection.prepareStatement(strSQL);
//            ResultSet rs = pstm.executeQuery();
//            if (rs.next()) {
//                // Add thành công
//                lastId = rs.getInt(1);
//                return lastId;
//            }
//        } catch (SQLException e) {
//            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, e.getMessage());
//        }
//        return 0;
//    }

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        Blogs bgg = new Blogs();

//        ArrayList<Blogs> bg = dao.getAllBlogs();
//        for (Blogs blogs : bg) {
//            System.out.println(blogs.toString());
//        }
//        ArrayList<Blogs> bg = dao.getTop5Blogs();
//        for (Blogs blogs : bg) {
//            System.out.println(blogs.toString());
//        }
        dao.createBlog("a", "b", 0, "bl_img", 1, "2023-09-01", 1, 1, 0, "Active");
    }

}
