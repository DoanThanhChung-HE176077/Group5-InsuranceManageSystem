/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Form_Vatchat {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    private int fvc_id;
    private int brand_id;
    private int model_id;
    private int pt_id;
    private int deduc_id;
    private String startDate;
    private String endDate;
    private int totalPrice;
    private int user_id;
    private String fvc_deviceNum;
    private String fvc_deviceChassisNum;
    private String fvc_licensePlates;
    private String ip_id;
    private String fvc_status;

    public Form_Vatchat() {
    }

    public Form_Vatchat(int id, int fvc_id, int brand_id, int model_id, int pt_id, int deduc_id, String startDate, String endDate, int totalPrice, int user_id, String fvc_deviceNum, String fvc_deviceChassisNum, String fvc_licensePlates, String ip_id, String fvc_status) {
        this.id = id;
        this.fvc_id = fvc_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.pt_id = pt_id;
        this.deduc_id = deduc_id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.totalPrice = totalPrice;
        this.user_id = user_id;
        this.fvc_deviceNum = fvc_deviceNum;
        this.fvc_deviceChassisNum = fvc_deviceChassisNum;
        this.fvc_licensePlates = fvc_licensePlates;
        this.ip_id = ip_id;
        this.fvc_status = fvc_status;
    }
    
    
    
    
    
    
    public Form_Vatchat(int fvc_id, int brand_id, int model_id, int pt_id, int deduc_id, String startDate, String endDate, int totalPrice, int user_id, String fvc_deviceNum, String fvc_deviceChassisNum, String fvc_licensePlates, String ip_id, String fvc_status) {
        this.fvc_id = fvc_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.pt_id = pt_id;
        this.deduc_id = deduc_id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.totalPrice = totalPrice;
        this.user_id = user_id;
        this.fvc_deviceNum = fvc_deviceNum;
        this.fvc_deviceChassisNum = fvc_deviceChassisNum;
        this.fvc_licensePlates = fvc_licensePlates;
        this.ip_id = ip_id;
        this.fvc_status = fvc_status;
    }

    public int getFvc_id() {
        return fvc_id;
    }

    public void setFvc_id(int fvc_id) {
        this.fvc_id = fvc_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getPt_id() {
        return pt_id;
    }

    public void setPt_id(int pt_id) {
        this.pt_id = pt_id;
    }

    public int getDeduc_id() {
        return deduc_id;
    }

    public void setDeduc_id(int deduc_id) {
        this.deduc_id = deduc_id;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFvc_deviceNum() {
        return fvc_deviceNum;
    }

    public void setFvc_deviceNum(String fvc_deviceNum) {
        this.fvc_deviceNum = fvc_deviceNum;
    }

    public String getFvc_deviceChassisNum() {
        return fvc_deviceChassisNum;
    }

    public void setFvc_deviceChassisNum(String fvc_deviceChassisNum) {
        this.fvc_deviceChassisNum = fvc_deviceChassisNum;
    }

    public String getFvc_licensePlates() {
        return fvc_licensePlates;
    }

    public void setFvc_licensePlates(String fvc_licensePlates) {
        this.fvc_licensePlates = fvc_licensePlates;
    }

    public String getIp_id() {
        return ip_id;
    }

    public void setIp_id(String ip_id) {
        this.ip_id = ip_id;
    }

    public String getFvc_status() {
        return fvc_status;
    }

    public void setFvc_status(String fvc_status) {
        this.fvc_status = fvc_status;
    }

    @Override
    public String toString() {
        return "Form_Vatchat{" + "fvc_id=" + fvc_id + ", brand_id=" + brand_id + ", model_id=" + model_id + ", pt_id=" + pt_id + ", deduc_id=" + deduc_id + ", startDate=" + startDate + ", endDate=" + endDate + ", totalPrice=" + totalPrice + ", user_id=" + user_id + ", fvc_deviceNum=" + fvc_deviceNum + ", fvc_deviceChassisNum=" + fvc_deviceChassisNum + ", fvc_licensePlates=" + fvc_licensePlates + ", ip_id=" + ip_id + ", fvc_status=" + fvc_status + '}';
    }


}
