/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class TNDS_Level {
    private int lv_id;
    private String lv_value;

    public TNDS_Level(int lv_id, String lv_value) {
        this.lv_id = lv_id;
        this.lv_value = lv_value;
    }

    public int getLv_id() {
        return lv_id;
    }

    public void setLv_id(int lv_id) {
        this.lv_id = lv_id;
    }

    public String getLv_value() {
        return lv_value;
    }

    public void setLv_value(String lv_value) {
        this.lv_value = lv_value;
    }
    
}
