/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;



/**
 *
 * @author ADMIN
 */
public class InsuranceProduct {
    private int ip_id;
    private String ip_type;
    private String ip_name;
    private String ip_img;
    private String ip_description;
    
    
    
    public InsuranceProduct(){
       
    }
    public InsuranceProduct(int ip_id,String ip_type,String ip_name,String ip_img,String ip_description){
        this.ip_id= ip_id;
        this.ip_type = ip_type;
        this.ip_name = ip_name;
        this.ip_img = ip_img;
        this.ip_description = ip_description;
    }

    public String getIp_img() {
        return ip_img;
    }

    public void setIp_img(String ip_img) {
        this.ip_img = ip_img;
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

    public String getIp_description() {
        return ip_description;
    }

    public void setIp_description(String ip_description) {
        this.ip_description = ip_description;
    }


    
    @Override
    public String toString() {
        return "InsuranceProduct{" + "ip_id=" + ip_id + ", ip_type=" + ip_type + ", ip_name=" + ip_name + '}';
    }
 
    
    
    
    
    
  
   

}



