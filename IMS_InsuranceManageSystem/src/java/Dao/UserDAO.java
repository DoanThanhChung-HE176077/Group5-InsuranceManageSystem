/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.Connection;
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
    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        User us = dao.dislayInfo(1);
        System.out.println(us);
    }
}
  
