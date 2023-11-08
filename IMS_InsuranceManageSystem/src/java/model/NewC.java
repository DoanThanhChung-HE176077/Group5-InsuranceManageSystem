/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class NewC extends Contract{
    private String user_fullname;
    private String ip_name;

    public NewC() {
    }

    public NewC(String user_fullname, String ip_name, int contract_id, int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, int total_price, String contract_status) {
        super(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status);
        this.user_fullname = user_fullname;
        this.ip_name = ip_name;
    }

    public String getUser_fullname() {
        return user_fullname;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }

    public String getIp_name() {
        return ip_name;
    }

    public void setIp_name(String ip_name) {
        this.ip_name = ip_name;
    }

    @Override
    public String toString() {
        return "NewC{" + "user_fullname=" + user_fullname + ", ip_name=" + ip_name + '}';
    }
    
    
}
