/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.User;

/**
 *
 * @author thant
 */
public class UserDAO extends DBContext{

<<<<<<< HEAD
    public UserDAO() {
    }
=======
//    public UserDAO() {
//    }
>>>>>>> chungdthe176077
   
    //check Login method
    public String checkLogin(String userlogin, String password) {
        try {
            String strSQL=null;
            if (checkInfo(userlogin) == "email") {
                strSQL = "SELECT * FROM Users WHERE user_mail = ? AND user_password = ?";
            } else if (checkInfo(userlogin) == "phone") {
                strSQL = "SELECT * FROM Users WHERE user_phoneNum = ? AND user_password = ?";
            }
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, userlogin);
            pstm.setString(2, password);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                // Đăng nhập thành công
                return "Login successful!";
            } else {
                // Kiểm tra xem tên người dùng có tồn tại hay không
                if (checkInfo(userlogin) == "email") {
                    strSQL = "SELECT * FROM Users WHERE user_mail = ?";
                } else if (checkInfo(userlogin) == "phone") {
                    strSQL = "SELECT * FROM Users WHERE user_phoneNum = ?";
                }
                pstm = connection.prepareStatement(strSQL);
                pstm.setString(1, userlogin);
                ResultSet userRs = pstm.executeQuery();

                if (userRs.next()) {
                    // Tên người dùng tồn tại, vì vậy mật khẩu không chính xác
                    System.out.println("pass issue");
                    return "Sai mật khẩu!";
                } else {
                    // Tên người dùng không tồn tại
                    System.out.println("mail issue");

                    return "Sai mã đăng nhập!";
                }
            }
        } catch (Exception e) {
            System.out.println("checkLogin: " + e.getMessage());
            return "An error occurred during login.";
        }
    }
    
    
    public static String checkInfo(String input) {
        // Kiểm tra xem input có phải là email không
        Pattern emailPattern = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$");
        Matcher emailMatcher = emailPattern.matcher(input);
        if (emailMatcher.matches()) {
            System.out.println("mail ne");
            return "email";
        }

        // Kiểm tra xem input có phải là số điện thoại không
        Pattern phonePattern = Pattern.compile("^0\\d{9}$");
        Matcher phoneMatcher = phonePattern.matcher(input);
        if (phoneMatcher.matches()) {
            System.out.println("phone ne");
            return "phone";
        }

        // Nếu không phải email và không phải số điện thoại thì trả về null
        return null;
    }
    
    
    public User getUsers(String userlogin, String password) {
        try {
            String strSQL=null;
            if (checkInfo(userlogin) == "email") {
                strSQL = "SELECT * FROM Users WHERE user_mail = ? AND user_password = ?";
            } else if (checkInfo(userlogin) == "phone") {
                strSQL = "SELECT * FROM Users WHERE user_phoneNum = ? AND user_password = ?";
            }
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, userlogin);
            pstm.setString(2, password);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                // Đăng nhập thành công
                User u = new User();
                u.setUser_id(rs.getInt(1));
                u.setUser_fullName(rs.getString(2));
                u.setUser_email(rs.getString(3));
                u.setUser_password(rs.getString(4));
                u.setUser_dob(rs.getDate(5));
                u.setUser_address(rs.getString(6));
                u.setUser_phoneNum(rs.getString(7));
                u.setUser_iden(rs.getString(8));
                u.setUser_role(rs.getString(10));
                return u;
            }
        } catch (Exception e) {
            System.out.println("checkLogin: " + e.getMessage());
        }
        return null;
    }

    
    //register method
    public void addUser(String fullname, String mail, String password, Date dob, String address, String phoneNum, String iden) {
        try {
            int temp = getLastId()+1;
            String strSQL = "INSERT INTO Users (user_id, user_fullname, user_mail, user_password, user_dob, user_address, user_phoneNum, user_iden, user_img, user_role) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setInt(1, temp);
            pstm.setString(2, fullname);
            pstm.setString(3, mail);
            pstm.setString(4, password);
            java.sql.Date sqlDate = new java.sql.Date(dob.getTime());
            pstm.setDate(5, (sqlDate));
            pstm.setString(6, address);
            pstm.setString(7, phoneNum);
            pstm.setString(8, iden);
            pstm.setString(9, "");
            pstm.setString(10, "customer");
            pstm.execute();
                System.out.println("Add user successful");
        } catch (Exception e) {
            System.out.println("addUser: " + e.getMessage());
        }
    }
    
    public int getLastId() {
        int lastId;
        try {
            String strSQL = "SELECT top 1 user_id FROM Users ORDER BY user_id DESC;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                // Add thành công
                lastId = rs.getInt(1);
                return lastId;
            } 
        } catch (Exception e) {
            System.out.println("getLastId: " + e.getMessage());
        }
        return 0;
    }
    
    
    
    
//    thien
    public User dislayInfo(int user_id) {
        String sql = "select * from Users where user_id = " + user_id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User us = new User(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getDate(5), rs.getString(6), rs.getString(7),
                         rs.getString(8), rs.getString(9), rs.getString(10));
                return us;
            }
        } catch (Exception E) {

        }
        return null;
    }

    public void updateUser(int user_id, String user_fullname, String user_mail,
            String user_password, java.sql.Date user_dob, String user_address,
            String user_phoneNum, String user_iden) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET \n"
                + "       [user_fullname] = ?\n"
                + "      ,[user_mail] = ?\n"
                + "      ,[user_password] =?\n"
                + "      ,[user_dob] = ?\n"
                + "      ,[user_address] =?\n"
                + "      ,[user_phoneNum] =?\n"
                + "      ,[user_iden] = ?\n"
                + "      \n"
                + " WHERE user_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user_fullname);
            st.setString(2, user_mail);
            st.setString(3, user_password);
            st.setDate(4, user_dob);
            st.setString(5, user_address);
            st.setString(6, user_phoneNum);
            st.setString(7, user_iden);
            st.setInt(8, user_id);

            st.executeUpdate();

        } catch (Exception E) {

        }

    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        dao.updateUser(1, "1", "1", "1", java.sql.Date.valueOf("2003-03-23"), "1123456", "1", "1");

    }
}
