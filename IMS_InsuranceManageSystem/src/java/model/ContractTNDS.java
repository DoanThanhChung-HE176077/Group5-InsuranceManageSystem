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
public class ContractTNDS {
    private int contract_id;
    private String fullname;
    private String nameip;
    private int tnds_id;
    private String loaixe;
    private String somay;
    private String bienxe;
    private String sokhung;
    private Date ngaybd;
    private Date ngaykt;
    private String muctrachnhiem;
    private String songuoi;
    private String tongchiphi;
    private String trangthai;

    public ContractTNDS() {
    }

    public int getTnds_id() {
        return tnds_id;
    }

    public void setTnds_id(int tnds_id) {
        this.tnds_id = tnds_id;
    }

    public ContractTNDS(int contract_id, String fullname, String nameip, int tnds_id, String loaixe, String somay, String bienxe, String sokhung, Date ngaybd, Date ngaykt, String muctrachnhiem, String songuoi, String tongchiphi, String trangthai) {
        this.contract_id = contract_id;
        this.fullname = fullname;
        this.nameip = nameip;
        this.tnds_id = tnds_id;
        this.loaixe = loaixe;
        this.somay = somay;
        this.bienxe = bienxe;
        this.sokhung = sokhung;
        this.ngaybd = ngaybd;
        this.ngaykt = ngaykt;
        this.muctrachnhiem = muctrachnhiem;
        this.songuoi = songuoi;
        this.tongchiphi = tongchiphi;
        this.trangthai = trangthai;
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

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }

    public String getLoaixe() {
        return loaixe;
    }

    public void setLoaixe(String loaixe) {
        this.loaixe = loaixe;
    }

    public String getSomay() {
        return somay;
    }

    public void setSomay(String somay) {
        this.somay = somay;
    }

    public String getBienxe() {
        return bienxe;
    }

    public void setBienxe(String bienxe) {
        this.bienxe = bienxe;
    }

    public String getSokhung() {
        return sokhung;
    }

    public void setSokhung(String sokhung) {
        this.sokhung = sokhung;
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

    public String getMuctrachnhiem() {
        return muctrachnhiem;
    }

    public void setMuctrachnhiem(String muctrachnhiem) {
        this.muctrachnhiem = muctrachnhiem;
    }

    public String getSonguoi() {
        return songuoi;
    }

    public void setSonguoi(String songuoi) {
        this.songuoi = songuoi;
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
        return "ContractTNDS{" + "fullname=" + fullname + ", nameip=" + nameip + ", tnds_id=" + tnds_id + ", loaixe=" + loaixe + ", somay=" + somay + ", bienxe=" + bienxe + ", sokhung=" + sokhung + ", ngaybd=" + ngaybd + ", ngaykt=" + ngaykt + ", muctrachnhiem=" + muctrachnhiem + ", songuoi=" + songuoi + ", tongchiphi=" + tongchiphi + ", trangthai=" + trangthai + '}';
    }

   
    

    

}
