/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.text.SimpleDateFormat;



/**
 *
 * @author chun
 */
public class Contract {
   private int contract_id;
   private int user_id;
   private Date contract_startDate;
    private  Date contract_endDate;
    private  int ip_id;
    private  int fvc_id;
    private  int ftnds_id;
    private  int total_price;
    private  String contract_status;// Active,Reject,Expired,Pending

    public Contract() {
    }

    public Contract(int contract_id, int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, int total_price, String contract_status) {
        this.contract_id = contract_id;
        this.user_id = user_id;
        this.contract_startDate = contract_startDate;
        this.contract_endDate = contract_endDate;
        this.ip_id = ip_id;
        this.fvc_id = fvc_id;
        this.ftnds_id = ftnds_id;
        this.total_price = total_price;
        this.contract_status = contract_status;
    }

    public Contract(int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, int total_price) {
        this.user_id = user_id;
        this.contract_startDate = contract_startDate;
        this.contract_endDate = contract_endDate;
        this.ip_id = ip_id;
        this.fvc_id = fvc_id;
        this.ftnds_id = ftnds_id;
        this.total_price = total_price;
    }
    
    public Contract(int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int ftnds_id, int total_price) {
        this.user_id = user_id;
        this.contract_startDate = contract_startDate;
        this.contract_endDate = contract_endDate;
        this.ip_id = ip_id;
     
        this.ftnds_id = ftnds_id;
        this.total_price = total_price;
    }

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
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

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public String getContract_status() {
        return contract_status;
    }

    public void setContract_status(String contract_status) {
        this.contract_status = contract_status;
    }

    @Override
    public String toString() {
        return "Contract{" + "contract_id=" + contract_id + ", user_id=" + user_id + ", contract_startDate=" + contract_startDate + ", contract_endDate=" + contract_endDate + ", ip_id=" + ip_id + ", fvc_id=" + fvc_id + ", ftnds_id=" + ftnds_id + ", total_price=" + total_price + ", contract_status=" + contract_status + '}';
    }



   
    
}
