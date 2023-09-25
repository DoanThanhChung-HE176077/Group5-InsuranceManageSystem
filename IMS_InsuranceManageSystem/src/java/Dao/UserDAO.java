/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.User;

/**
 *
 * @author Dell
 */
public class UserDAO extends DBContext{
    Connection cnn; // ket noi db(file db context)
    Statement stm; //Thuc hien cau lenh SQL 
    ResultSet rs; //Luu tru va xu ly du lieu
    
    
    public  User dislayInfo(int user_id){
        String sql ="select * from Users where user_id = "+user_id;
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs= st.executeQuery();
            if(rs.next()){
                User us = new User(rs.getInt(1),rs.getString(2),rs.getString(3),
                rs.getString(4),rs.getDate(5),rs.getString(6),rs.getString(7)
                ,rs.getString(8),rs.getString(9),rs.getString(10));
                return us;
            }
        }catch(Exception E){
            
        }
        return null;
    }
    public void updateUser(int user_id, String user_fullname,String user_mail,
            String user_password,Date user_dob,String user_address,
            String user_phoneNum, String user_iden  ){
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
        
        try{
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
            
        }catch(Exception E){
            
        }
        
    }
    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
         dao.updateUser(1, "1", "1", "1", Date.valueOf("2003-03-23"), "1123456", "1", "1");
       
    }
}
  
