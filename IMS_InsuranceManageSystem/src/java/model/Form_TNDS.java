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
public class Form_TNDS {
         private int id;
        private String loaiXe;
        private String soMay;
        private String bienXe;
        private String soKhung;
        private Date startDate;
        private Date endDate;
        private String mucTrachNhiem;
        private String soNguoi;
        private String tongChiPhi;
        private int userId;
        private String ip_id;
        private String status;

    public Form_TNDS(String loaiXe, String soMay, String bienXe, String soKhung, Date startDate, Date endDate, String mucTrachNhiem, String soNguoi, String tongChiPhi, int userId, String ip_id, String status) {
        this.loaiXe = loaiXe;
        this.soMay = soMay;
        this.bienXe = bienXe;
        this.soKhung = soKhung;
        this.startDate = startDate;
        this.endDate = endDate;
        this.mucTrachNhiem = mucTrachNhiem;
        this.soNguoi = soNguoi;
        this.tongChiPhi = tongChiPhi;
        this.userId = userId;
        this.ip_id = ip_id;
        this.status = status;
    }

    public Form_TNDS(int id, String loaiXe, String soMay, String bienXe, String soKhung, Date startDate, Date endDate, String mucTrachNhiem, String soNguoi, String tongChiPhi, int userId, String ip_id, String status) {
        this.id = id;
        this.loaiXe = loaiXe;
        this.soMay = soMay;
        this.bienXe = bienXe;
        this.soKhung = soKhung;
        this.startDate = startDate;
        this.endDate = endDate;
        this.mucTrachNhiem = mucTrachNhiem;
        this.soNguoi = soNguoi;
        this.tongChiPhi = tongChiPhi;
        this.userId = userId;
        this.ip_id = ip_id;
        this.status = status;
    }
    
    public String getLoaiXe() {
        return loaiXe;
    }

    public void setLoaiXe(String loaiXe) {
        this.loaiXe = loaiXe;
    }

    public String getSoMay() {
        return soMay;
    }

    public void setSoMay(String soMay) {
        this.soMay = soMay;
    }

    public String getBienXe() {
        return bienXe;
    }

    public void setBienXe(String bienXe) {
        this.bienXe = bienXe;
    }

    public String getSoKhung() {
        return soKhung;
    }

    public void setSoKhung(String soKhung) {
        this.soKhung = soKhung;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getMucTrachNhiem() {
        return mucTrachNhiem;
    }

    public void setMucTrachNhiem(String mucTrachNhiem) {
        this.mucTrachNhiem = mucTrachNhiem;
    }

    public String getSoNguoi() {
        return soNguoi;
    }

    public void setSoNguoi(String soNguoi) {
        this.soNguoi = soNguoi;
    }

    public String getTongChiPhi() {
        return tongChiPhi;
    }

    public void setTongChiPhi(String tongChiPhi) {
        this.tongChiPhi = tongChiPhi;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getIp_id() {
        return ip_id;
    }

    public void setIp_id(String ip_id) {
        this.ip_id = ip_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

        
        
   
}
