/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class TNDS_LevelNop {
    private int ln_id;
     private int lv_id;
      private int ln_nop;
       private int ln_price;

    public TNDS_LevelNop(int ln_id, int lv_id, int ln_nop, int ln_price) {
        this.ln_id = ln_id;
        this.lv_id = lv_id;
        this.ln_nop = ln_nop;
        this.ln_price = ln_price;
    }

    public int getLn_id() {
        return ln_id;
    }

    public void setLn_id(int ln_id) {
        this.ln_id = ln_id;
    }

    public int getLv_id() {
        return lv_id;
    }

    public void setLv_id(int lv_id) {
        this.lv_id = lv_id;
    }

    public int getLn_nop() {
        return ln_nop;
    }

    public void setLn_nop(int ln_nop) {
        this.ln_nop = ln_nop;
    }

    public int getLn_price() {
        return ln_price;
    }

    public void setLn_price(int ln_price) {
        this.ln_price = ln_price;
    }
    
    
}
