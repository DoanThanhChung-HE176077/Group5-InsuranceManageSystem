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
public class ContractVatchat { 
    private int contract_id;
    private int vatchat_id;
    private String fullname;
    private String nameip;
    private String hangxe;
    private String hieuxe;
    private String somay;
    private String sokhung;
    private String bienkiemsoat;
    private Date ngaybd;
    private Date ngaykt;
    private String goibhcb;
    private String muckhautru;
    private String tongchiphi;
    private String trangthai;

    public ContractVatchat() {
    }

    public ContractVatchat(int contract_id, int vatchat_id, String fullname, String nameip, String hangxe, String hieuxe, String somay, String sokhung, String bienkiemsoat, Date ngaybd, Date ngaykt, String goibhcb, String muckhautru, String tongchiphi, String trangthai) {
        this.contract_id = contract_id;
        this.vatchat_id = vatchat_id;
        this.fullname = fullname;
        this.nameip = nameip;
        this.hangxe = hangxe;
        this.hieuxe = hieuxe;
        this.somay = somay;
        this.sokhung = sokhung;
        this.bienkiemsoat = bienkiemsoat;
        this.ngaybd = ngaybd;
        this.ngaykt = ngaykt;
        this.goibhcb = goibhcb;
        this.muckhautru = muckhautru;
        this.tongchiphi = tongchiphi;
        this.trangthai = trangthai;
    }

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }

    public int getVatchat_id() {
        return vatchat_id;
    }

    public void setVatchat_id(int vatchat_id) {
        this.vatchat_id = vatchat_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getNameip() {
        return nameip;
    }

    public void setNameip(String nameip) {
        this.nameip = nameip;
    }

    public String getHangxe() {
        return hangxe;
    }

    public void setHangxe(String hangxe) {
        this.hangxe = hangxe;
    }

    public String getHieuxe() {
        return hieuxe;
    }

    public void setHieuxe(String hieuxe) {
        this.hieuxe = hieuxe;
    }

    public String getSomay() {
        return somay;
    }

    public void setSomay(String somay) {
        this.somay = somay;
    }

    public String getSokhung() {
        return sokhung;
    }

    public void setSokhung(String sokhung) {
        this.sokhung = sokhung;
    }

    public String getBienkiemsoat() {
        return bienkiemsoat;
    }

    public void setBienkiemsoat(String bienkiemsoat) {
        this.bienkiemsoat = bienkiemsoat;
    }

    public Date getNgaybd() {
        return ngaybd;
    }

    public void setNgaybd(Date ngaybd) {
        this.ngaybd = ngaybd;
    }

    public Date getNgaykt() {
        return ngaykt;
    }

    public void setNgaykt(Date ngaykt) {
        this.ngaykt = ngaykt;
    }

    public String getGoibhcb() {
        return goibhcb;
    }

    public void setGoibhcb(String goibhcb) {
        this.goibhcb = goibhcb;
    }

    public String getMuckhautru() {
        return muckhautru;
    }

    public void setMuckhautru(String muckhautru) {
        this.muckhautru = muckhautru;
    }

    public String getTongchiphi() {
        return tongchiphi;
    }

    public void setTongchiphi(String tongchiphi) {
        this.tongchiphi = tongchiphi;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    @Override
    public String toString() {
        return "ContractVatchat{" + "vatchat_id=" + vatchat_id + ", fullname=" + fullname + ", nameip=" + nameip + ", hangxe=" + hangxe + ", hieuxe=" + hieuxe + ", somay=" + somay + ", sokhung=" + sokhung + ", bienkiemsoat=" + bienkiemsoat + ", ngaybd=" + ngaybd + ", ngaykt=" + ngaykt + ", goibhcb=" + goibhcb + ", muckhautru=" + muckhautru + ", tongchiphi=" + tongchiphi + ", trangthai=" + trangthai + '}';
    }

    
    
}
