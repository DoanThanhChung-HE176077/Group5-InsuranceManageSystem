/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Package_Type {
    int pt_id;
    float pt_percent;

    public Package_Type() {
    }

    public Package_Type(int pt_id, float pt_percent) {
        this.pt_id = pt_id;
        this.pt_percent = pt_percent;
    }

    public int getPt_id() {
        return pt_id;
    }

    public void setPt_id(int pt_id) {
        this.pt_id = pt_id;
    }

    public float getPt_percent() {
        return pt_percent;
    }

    public void setPt_percent(float pt_percent) {
        this.pt_percent = pt_percent;
    }

    @Override
    public String toString() {
        return "Package_Type{" + "pt_id=" + pt_id + ", pt_percent=" + pt_percent + '}';
    }
    
}
