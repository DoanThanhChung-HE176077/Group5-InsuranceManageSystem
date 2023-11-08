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
    private String user_iden;
    private String user_phoneNum;
    private String user_fullname;
    private Date user_dob;
    private String user_mail;
    private String user_address;
    private String ip_name;

    public NewC() {
    }

    public NewC(String user_fullname, String ip_name, int contract_id, int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, int total_price, String contract_status) {
        super(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status);
        this.user_fullname = user_fullname;
        this.ip_name = ip_name;
    }

    public NewC(String user_iden, String user_phoneNum, String user_fullname, Date user_dob, String user_mail, String user_address, String ip_name, int contract_id, int user_id, Date contract_startDate, Date contract_endDate, int ip_id, int fvc_id, int ftnds_id, int total_price, String contract_status) {
        super(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status);
        this.user_iden = user_iden;
        this.user_phoneNum = user_phoneNum;
        this.user_fullname = user_fullname;
        this.user_dob = user_dob;
        this.user_mail = user_mail;
        this.user_address = user_address;
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
    

    /**
     * @return the user_iden
     */
    public String getUser_iden() {
        return user_iden;
    }

    /**
     * @param user_iden the user_iden to set
     */
    public void setUser_iden(String user_iden) {
        this.user_iden = user_iden;
    }

    /**
     * @return the user_phoneNum
     */
    public String getUser_phoneNum() {
        return user_phoneNum;
    }

    /**
     * @param user_phoneNum the user_phoneNum to set
     */
    public void setUser_phoneNum(String user_phoneNum) {
        this.user_phoneNum = user_phoneNum;
    }

    /**
     * @return the user_dob
     */
    public Date getUser_dob() {
        return user_dob;
    }

    /**
     * @param user_dob the user_dob to set
     */
    public void setUser_dob(Date user_dob) {
        this.user_dob = user_dob;
    }

    /**
     * @return the user_mail
     */
    public String getUser_mail() {
        return user_mail;
    }

    /**
     * @param user_mail the user_mail to set
     */
    public void setUser_mail(String user_mail) {
        this.user_mail = user_mail;
    }

    /**
     * @return the user_address
     */
    public String getUser_address() {
        return user_address;
    }

    /**
     * @param user_address the user_address to set
     */
    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    
}
