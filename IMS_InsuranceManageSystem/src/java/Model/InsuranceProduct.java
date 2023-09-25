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
public class InsuranceProduct {
    private int ip_id;
    private String ip_type;
    private String ip_name;
    
    public InsuranceProduct(){
        
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


    public void setIp_id(int ip_id) {
        this.ip_id = ip_id;
    }

    public void setIp_type(String ip_type) {
        this.ip_type = ip_type;
    }

    public void setIp_name(String ip_name) {
        this.ip_name = ip_name;
    }

    @Override
    public String toString() {
        return "InsuranceProduct{" + "ip_id=" + ip_id + ", ip_type=" + ip_type + ", ip_name=" + ip_name + '}';
    }
 
    
    
    
    
    
    
    

}



