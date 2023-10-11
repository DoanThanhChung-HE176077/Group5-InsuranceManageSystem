/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.InsuranceProduct;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class IPDAO extends DBContext{
    Connection cnn;// Ket noi database
    Statement pstm; // Thuc hien cau lenh SQL
    ResultSet rs; // Luu tru va xu ly du lieu


    
    // add insurance product
    public void addIP(int id,String type, String name) {
        try {
            String strSQL = "INSERT INTO [Insurance_Products](ip_id, ip_type, ip_name) values (?,?,?)"
                    
                    ;
            PreparedStatement pstm = connection.prepareStatement(strSQL); 
            pstm.setInt(1, id);
            pstm.setString(2, type);
            pstm.setString(3, name);
            
            pstm.execute();
            
        } catch (SQLException e) {
            System.out.println("addIP: " + e.getMessage());
        }
        
    }
    public ArrayList<InsuranceProduct> getALLIP() {
        ArrayList<InsuranceProduct> list = new ArrayList<>();
        
        try {
            String strSQL = "select * from Insurance_Products";
            PreparedStatement pstm = connection.prepareStatement(strSQL);          
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new InsuranceProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                        ));
            }
        } catch (Exception e) {
            System.out.println("getALLIP: " + e.getMessage());
        }
        return list;
    }

    public InsuranceProduct getIPbyID(int id) {
        String strSQL = "select * from Insurance_Products\n"
                + "where ip_id = ?";
        try {
            
            PreparedStatement pstm = connection.prepareStatement(strSQL);  
                        pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                return new InsuranceProduct(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                        );
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        IPDAO ip = new IPDAO();
        InsuranceProduct isp = ip.getIPbyID(1);
        System.out.println(isp.getIp_name());
        
    }

}
