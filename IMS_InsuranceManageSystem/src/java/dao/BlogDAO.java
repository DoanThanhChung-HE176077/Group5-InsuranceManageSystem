/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import model.Blog_tag;
import model.Blog_type;
import model.Blogs;
import model.NewBl;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chun
 */
public class BlogDAO extends DBContext {
SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy"); // Định dạng ngày tháng năm

    //count view
    public boolean countView (int bl_idInput) {
        try {
            String sql = "  UPDATE Blogs\n"
                    + "SET bl_view = bl_view + 1\n"
                    + "WHERE bl_id = ?;";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setInt(1, bl_idInput);            
            pstm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    //get list blog
    public ArrayList<Blogs> getAllBlogs() {
        try {
            ArrayList<Blogs> getAll = new ArrayList<>();
            String sql = "select * from Blogs";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);

                getAll.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_view, bl_status));
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
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                java.sql.Date sqlDate = java.sql.Date.valueOf(bl_creationdate);
                java.util.Date utilDate = new java.util.Date(sqlDate.getTime());
                String formattedCreationDate = dateFormat.format(utilDate); // Định dạng lại thành chuỗi ngày tháng năm
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);
                
                // dinh dang date              
                    getTop5Blogs.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, formattedCreationDate, bl_type_name, bl_tag_tagname, bl_view, bl_status));

            }
            return getTop5Blogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<NewBl> getNewBlogsWithUserName() {
        try {
            ArrayList<NewBl> getBlogs = new ArrayList<>();
            String sql = "SELECT top 3  B.* , U.user_fullname from Blogs B JOIN Users U ON B.user_id = U.user_id where bl_status='active'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                String bl_view = rs.getString(10);
                String bl_status = rs.getString(11);
                String username = rs.getString(12);

                
                
                getBlogs.add(new  NewBl(username, bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_like, bl_status));

            }
            return getBlogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<NewBl> getNewBlogsWithUserNamebyID(int id) {
        try {
            ArrayList<NewBl> getBlogs = new ArrayList<>();
            String sql = "SELECT top 3  B.* , U.user_fullname from Blogs B JOIN Users U ON B.user_id = U.user_id where bl_status='active'and U.user_id ="+id;
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                String bl_view = rs.getString(10);
                String bl_status = rs.getString(11);
                String username = rs.getString(12);

                getBlogs.add(new  NewBl(username, bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_like, bl_status));

            }
            return getBlogs;
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
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);

                getTop15Blogs.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_view, bl_status));

            }
            return getTop15Blogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //get all feature blog
    public ArrayList<Blogs> getFeatureBlog(String bl_type_name1) {
        try {
            ArrayList<Blogs> getFeatureBlog = new ArrayList<>();
            String sql = "select * from Blogs where bl_type_name = ?";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, bl_type_name1);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                int bl_view = rs.getInt(10);
                String bl_status = rs.getString(11);

                getFeatureBlog.add(new Blogs(bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_view, bl_status));
            }
            return getFeatureBlog;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //get blog with user name
    public ArrayList<NewBl> getBlogsWithUserName() {
        try {
            ArrayList<NewBl> getBlogs = new ArrayList<>();
            String sql = "SELECT  B.* , U.user_fullname from Blogs B JOIN Users U ON B.user_id = U.user_id;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_title = rs.getString(2);
                String bl_content = rs.getString(3);
                int bl_like = rs.getInt(4);
                String bl_img = rs.getString(5);
                int user_id = rs.getInt(6);
                String bl_creationdate = rs.getString(7);
                String bl_type_name = rs.getString(8);
                String bl_tag_tagname = rs.getString(9);
                String bl_view = rs.getString(10);
                String bl_status = rs.getString(11);
                String username = rs.getString(12);

                getBlogs.add(new  NewBl(username, bl_id, bl_title, bl_content, bl_like, bl_img, user_id, bl_creationdate, bl_type_name, bl_tag_tagname, bl_like, bl_status));

            }
            return getBlogs;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
    //create new blog
     public boolean createBlog(
            String bl_title,
            String bl_content,
            int bl_like,
            String bl_img,
            int user_id,
            String bl_creationdate,
            String bl_type_name,
            String bl_tag_tagname,
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
            pstm.setString(7, bl_type_name);
            pstm.setString(8, bl_tag_tagname);
            pstm.setInt(9, bl_view);
            pstm.setString(10, bl_status);
            
            pstm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
     //update existed blog
    public boolean updateBlog(Blogs blog) {
        try {
            String sql = "UPDATE [dbo].[Blogs]\n"
                    + "   SET [bl_title] = ?\n"
                    + "      ,[bl_content] = ?\n"
                    + "      ,[bl_like] = ?\n"
                    + "      ,[bl_img] = ?\n"
                    + "      ,[user_id] = ?\n"
                    + "      ,[bl_creationdate] = ?\n"
                    + "      ,[bl_type_name] = ?\n"
                    + "      ,[bl_tag_tagname] = ?\n"
                    + "      ,[bl_view] = ?\n"
                    + "      ,[bl_status] = ?\n"
                    + " WHERE [bl_id] = ?";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, blog.getBl_title());
            pstm.setString(2, blog.getBl_content());
            pstm.setInt(3, blog.getBl_like());
            pstm.setString(4, blog.getBl_img());
            pstm.setInt(5, blog.getUser_id());
            pstm.setString(6, blog.getBl_creationdate());
            pstm.setString(7, blog.getBl_type_name());
            pstm.setString(8, blog.getBl_tag_tagname());
            pstm.setInt(9, blog.getBl_view());
            pstm.setString(10, blog.getBl_status());
            pstm.setInt(11, blog.getBl_id());

            pstm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
     //get blog tag
     public ArrayList<Blog_tag> getBlogTag() {
        try {
            ArrayList<Blog_tag> getBlogTag = new ArrayList<>();
            String sql = "select * from Blog_tag";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_tag_tagname = rs.getString(2);
                getBlogTag.add(new Blog_tag(bl_id, bl_tag_tagname));
            }
            return getBlogTag;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
     //get blog type
    public ArrayList<Blog_type> getBlogType() {
        try {
            ArrayList<Blog_type> getBlogType = new ArrayList<>();
            String sql = "select * from Blog_type";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int bl_id = rs.getInt(1);
                String bl_tag_tagname = rs.getString(2);
                getBlogType.add(new Blog_type(bl_id, bl_tag_tagname));
            }
            return getBlogType;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
        //get 1 blog by bl_id
        public Blogs getABlogByBlogId (int bl_id) {
            try {
                String sql = "select * from Blogs where bl_id = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, bl_id);
                ResultSet rs = ps.executeQuery();

                rs.next();
                Blogs bg = new Blogs();
                bg.setBl_id(rs.getInt("bl_id"));
                bg.setBl_title(rs.getString("bl_title"));
                bg.setBl_content(rs.getString("bl_content"));
                bg.setBl_like(rs.getInt("bl_like"));
                bg.setBl_img(rs.getString("bl_img"));
                bg.setUser_id(rs.getInt("user_id"));
                bg.setBl_creationdate(rs.getString("bl_creationdate"));
                bg.setBl_type_name(rs.getString("bl_type_name"));
                bg.setBl_tag_tagname(rs.getString("bl_tag_tagname"));
                bg.setBl_view(rs.getInt("bl_view"));
                bg.setBl_status(rs.getString("bl_status"));

                return bg;
            } catch (SQLException ex) {
                Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            return null;
        } 

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
//        if (dao.countView(1)) {
//            System.out.println("count ok");
//        } else {
//            System.out.println("ko on");
//        }
        ArrayList<NewBl> list = dao.getNewBlogsWithUserNamebyID(1);
        System.out.println(list);
    }

}
