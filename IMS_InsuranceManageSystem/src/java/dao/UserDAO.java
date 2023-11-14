/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.User;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thant
 */
public class UserDAO extends DBContext {

    public UserDAO() {
    }

    //check Login method
    public String checkLogin(String userlogin, String password) {
        try {
            String strSQL = null;
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

    public boolean checkIdenExist(String iden) {
        try {
            String strSQL = "SELECT * FROM Users WHERE user_iden = ?";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, iden);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkIdenExist: " + e.getMessage());
        }

        return false;
    }

    public boolean checkPhoneExist(String phonenumb) {
        try {
            String strSQL = "SELECT * FROM Users WHERE user_phoneNum = ?";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, phonenumb);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkPhoneExist: " + e.getMessage());
        }

        return false;
    }

    public boolean checkEmailExist(String email) {
        try {
            String strSQL = "SELECT * FROM Users WHERE user_mail = ?";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, email);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkEmailExist: " + e.getMessage());
        }

        return false;
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
            String strSQL = null;
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
                u.setUser_image(rs.getString(9));
                u.setUser_role(rs.getString(10));
                return u;
            }
        } catch (Exception e) {
            System.out.println("checkLogin: " + e.getMessage());
        }
        return null;
    }

    //get full user 
    public User getUsers1(String userlogin, String password) {
        try {
            String strSQL = null;
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
                u.setUser_image(rs.getString(9));
                u.setUser_role(rs.getString(10));
                u.setUser_iden_img(rs.getString(11));
                u.setStatus(rs.getString(12));
                return u;
            }
        } catch (Exception e) {
            System.out.println("checkLogin: " + e.getMessage());
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return null;
    }

    //register method
    public boolean addUser(String fullname, String mail, String password, Date dob, String address, String phoneNum, String iden, String status) {
        try {
            int temp = getLastId() + 1;
            String strSQL = "INSERT INTO Users (user_id, user_fullname, user_mail, user_password, user_dob, user_address, user_phoneNum, user_iden, user_img, user_role, user_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
            pstm.setString(11, "Unverified");
            pstm.execute();
            return true;
//                System.out.println("Add user successful");
        } catch (Exception e) {
            System.out.println("addUser: " + e.getMessage());
        }
        return false;
    }

    public boolean addStaff(String fullname, String mail, String password, Date dob, String address, String phoneNum, String iden, String status) {
        try {
            System.out.println("alo");
            int temp = getLastId() + 1;
            String strSQL = "INSERT INTO Users (user_id, user_fullname, user_mail, user_password, user_dob, user_address, user_phoneNum, user_iden, user_img, user_role, user_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
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
            pstm.setString(10, "staff");
            pstm.setString(11, "Verified");
            pstm.execute();
            return true;
//                System.out.println("Add user successful");
        } catch (Exception e) {
            System.out.println("addStaff: " + e.getMessage());
        }
        return false;
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

    //chung: display full info
    public User dislayFullInfo(int user_id) {
        String sql = "select * from Users where user_id = " + user_id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User us = new User(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getDate(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12));
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

    public void updateStaff(String user_fullname, String user_mail,
            String user_dob, String user_address,
            String user_phoneNum, String user_iden, int id) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET \n"
                + "       [user_fullname] = ?\n"
                + "      ,[user_mail] = ?\n"
                + "      ,[user_dob] = ?\n"
                + "      ,[user_address] =?\n"
                + "      ,[user_phoneNum] =?\n"
                + "      ,[user_iden] = ?\n"
                + "      \n"
                + " WHERE user_id = " + id;

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user_fullname);
            st.setString(2, user_mail);
            st.setString(3, user_dob);
            st.setString(4, user_address);
            st.setString(5, user_phoneNum);
            st.setString(6, user_iden);

            st.executeUpdate();

        } catch (Exception e) {
            System.out.println("getALLUser: " + e.getMessage());
        }

    }

    public ArrayList<User> getALLUser() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String strSQL = "select * from Users where user_role='customer' or user_role='staff' ORDER BY user_fullname ASC";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)
                ));
            }
        } catch (Exception e) {
            System.out.println("getALLUser: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<User> getUser() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String strSQL = "  select * from Users where user_role='customer'  ORDER BY  user_status DESC,user_fullname ASC";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)
                ));
            }
        } catch (Exception e) {
            System.out.println("getUser: " + e.getMessage());
        }
        return list;
    }

    public User getDetailUser(int user_id) {
        String sql = "select * from Users where user_id = " + user_id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User us = new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)
                );
                return us;
            }
        } catch (Exception E) {

        }
        return null;
    }

    public ArrayList<User> getNewUser() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String strSQL = "  SELECT TOP 3 * FROM Users \n"
                    + "  where user_role = 'customer'\n"
                    + "ORDER BY user_id DESC;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)
                ));
            }
        } catch (Exception e) {
            System.out.println("getNewUser: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<User> getALLStaff() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String strSQL = "select * from Users where user_role = 'staff'";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)
                ));
            }
        } catch (Exception e) {
            System.out.println("getALLStaff: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<User> getNewStaff() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String strSQL = "  SELECT TOP 3 * FROM Users \n"
                    + "  where user_role = 'staff'\n"
                    + "ORDER BY user_id DESC;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)
                ));
            }
        } catch (Exception e) {
            System.out.println("getALLUser: " + e.getMessage());
        }
        return list;
    }

    public void changePassword(int id, String password) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET \n"
                + "      [user_password] = ?\n"
                + "     \n"
                + " WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception E) {

        }
    }
//=============================TEST==========================

    public boolean changeForgetPassword(String inputLogin, String newPass) {
        try {
            String strSQL = null;
            if (checkInfo(inputLogin) == "email") {
                strSQL = "UPDATE Users SET user_password=? WHERE user_mail=?";
            } else if (checkInfo(inputLogin) == "phone") {
                strSQL = "UPDATE Users SET user_password=? WHERE user_phoneNum=?";
            }
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, newPass);
            pstm.setString(2, inputLogin);
            pstm.execute();

            return true;
        } catch (Exception e) {
            System.out.println("changeForgetPassword: " + e.getMessage());
        }
        return false;
    }

    public boolean checkLoginInfo(String inputLogin) {
        try {
            String strSQL = null;
            if (checkInfo(inputLogin) == "email") {
                strSQL = "SELECT * FROM Users WHERE user_mail = ?";
            } else if (checkInfo(inputLogin) == "phone") {
                strSQL = "SELECT * FROM Users WHERE user_phoneNum = ?";
            }
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, inputLogin);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("checkLoginInfo: " + e.getMessage());
        }
        return false;
    }

    public ArrayList<User> searchUserByName(String txtsearch) {
        ArrayList<User> list = new ArrayList<>();
        String strSQL = "select * from Users\n"
                + "where [user_fullname] like ? and (user_role='customer')";
        try {

            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, "%" + txtsearch + "%");
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<User> searchStaffByName(String txtsearch) {
        ArrayList<User> list = new ArrayList<>();
        String strSQL = "select * from Users\n"
                + "where [user_fullname] like ? and (user_role='staff')";
        try {

            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, "%" + txtsearch + "%");
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteStaff(String id) {
        String strSQL = " delete from users where user_id = ?";
        try {
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, id);
            pstm.executeQuery();

        } catch (SQLException e) {
            System.out.println("deleteStaff:" + e);
        }

    }

    public List<User> getListbyPage(List<User> list, int start, int end) {
        ArrayList<User> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void verifyUser(String id) {
        String strSQL = " update users set user_status = 'Verified' where user_id = ?";
        try {
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, id);
            pstm.executeQuery();

        } catch (SQLException e) {
            System.out.println("verifyUser:" + e);
        }

    }

    //update cccd + img cccd
    public boolean verifyUserRequest(String user_iden_img, String user_idenString, int id) {
        String strSQL = " update Users set user_iden_img = ?, user_iden = ? where user_id = ?";
        try {
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setString(1, user_iden_img);
            pstm.setString(2, user_idenString);
            pstm.setInt(3, id);
            pstm.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("verifyUser:" + e);
        }
        return false;
    }

    //lấy ra danh sách tài khoản có trạng thái chưa xác minh nhưng có số cmt và ảnh
    public ArrayList<User> getListUserDangChoXacMinh() {
        ArrayList<User> list = new ArrayList<>();
        String strSQL = "SELECT *\n"
                + "FROM Users\n"
                + "WHERE user_status = 'Unverified' AND user_iden IS NOT NULL AND user_iden_img IS NOT NULL;";
        try {

            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //update user status from staff duyet
    public boolean updateUserStatusByStaff(int user_id_canupdate) {
        String strSQL = " update Users set user_status = 'Verified' where user_id = ?";
        try {
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            pstm.setInt(1, user_id_canupdate);
            pstm.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.err.println("update status user by staff:" + e);
        }
        return false;
    }

    //update mail usser
    public void updateMailUser(String mailString, int id) {
        String sql = "UPDATE Users\n"
                + "SET user_mail = ? \n"
                + "WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mailString);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception E) {
            System.out.println("updateMailUser:" + E);
        }
    }

    //lấy ra danh sách tài khoản 
    public ArrayList<User> getListUserFull() {
        ArrayList<User> list = new ArrayList<>();
        String strSQL = "SELECT * from Users ";
        try {
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    //

//    ====================================================|TEST |========================================
    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
////        ud.verifyUserRequest("000000000011", "Image/cccd/341950810_226418940067777_3382559294940831201_n.png", 16);
//        ArrayList<User> u = ud.getListUserDangChoXacMinh();
//        for (User user : u) {
//            System.out.println(u.toString());
//        }
        User u = ud.getUsers1("user3@gmai.com", "123");
        System.out.println(u.toString());
    }

}
