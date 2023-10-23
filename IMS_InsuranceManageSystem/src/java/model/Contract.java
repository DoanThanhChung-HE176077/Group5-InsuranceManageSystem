/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;



/**
 *
 * @author chun
 */
public class Contract {
    String contract_id;
    String user_id;
    Date contract_startDate;
    Date contract_endDate;
    int ip_id;
    int fvc_id;
    int ftnds_id;
    String total_price;
    String contract_status;
    String user_fullname;
    String ip_name;
    public Contract() {
    }
    public Contract(String contract_id, String user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, String total_price, String contract_status,String user_fullname,String ip_name) {
        this.contract_id = contract_id;
        this.user_id = user_id;
        this.contract_startDate = contract_startDate;
        this.contract_endDate = contract_endDate;
        this.ip_id = ip_id;
        this.fvc_id = fvc_id;
        this.ftnds_id = ftnds_id;
        this.total_price = total_price;
        this.contract_status = contract_status;
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

    public String getContract_id() {
        return contract_id;
    }

    public void setContract_id(String contract_id) {
        this.contract_id = contract_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Date getContract_startDate() {
        return contract_startDate;
    }

    public void setContract_startDate(Date contract_startDate) {
        this.contract_startDate = contract_startDate;
    }

    public Date getContract_endDate() {
        return contract_endDate;
    }

    public void setContract_endDate(Date contract_endDate) {
        this.contract_endDate = contract_endDate;
    }

    public int getIp_id() {
        return ip_id;
    }

    public void setIp_id(int ip_id) {
        this.ip_id = ip_id;
    }

    public int getFvc_id() {
        return fvc_id;
    }

    public void setFvc_id(int fvc_id) {
        this.fvc_id = fvc_id;
    }

    public int getFtnds_id() {
        return ftnds_id;
    }

    public void setFtnds_id(int ftnds_id) {
        this.ftnds_id = ftnds_id;
    }

    public String getTotal_price() {
        return total_price;
    }

    public void setTotal_price(String total_price) {
        this.total_price = total_price;
    }

    public String getContract_status() {
        return contract_status;
    }

    public void setContract_status(String contract_status) {
        this.contract_status = contract_status;
    }
    
    public static void main(String[] args) {
        
    }
    
    
}
