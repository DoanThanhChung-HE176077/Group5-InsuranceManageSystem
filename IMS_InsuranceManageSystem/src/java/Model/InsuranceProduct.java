/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Dao.DBContext;
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
public class InsuranceProduct extends DBContext{
    private int ip_id;
    private String ip_type;
    private String ip_name;
    
    public InsuranceProduct(){
        connect();
    }
    public InsuranceProduct(int ip_id,String ip_type,String ip_name){
        this.ip_id= ip_id;
        this.ip_type = ip_type;
        this.ip_name = ip_name;
    }
    
    public int getIp_id() {
        return ip_id;
    }

    public String getIp_type() {
        return ip_type;
    }

    public String getIp_name() {
        return ip_name;
    }

    public Connection getCnn() {
        return cnn;
    }

    public Statement getPstm() {
        return pstm;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setIp_id(int ip_id) {
        this.ip_id = ip_id;
    }

    public void setIp_type(String ip_type) {
        this.ip_type = ip_type;
    }

    public void setIp_name(String ip_name) {
        this.ip_name = ip_name;
    }

    public void setCnn(Connection cnn) {
        this.cnn = cnn;
    }

    public void setPstm(Statement pstm) {
        this.pstm = pstm;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
    
    
    
    
    
    
    Connection cnn;// Ket noi database
    Statement pstm; // Thuc hien cau lenh SQL
    ResultSet rs; // Luu tru va xu ly du lieu


    // Khai bao cac thanh phan xu li database:
    private void connect() {
        cnn = super.connection;
        if (cnn != null) {
            System.out.println("Connect success");
        } else {
            System.out.println("Connect fail");
        }
    }
    
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
                        rs.getString(3)
                        ));
            }
        } catch (Exception e) {
            System.out.println("getALLIP: " + e.getMessage());
        }
        return list;
    }
}


