/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class TNDS_Type {
    private int id;
    private String type_name;
    private int type_tax_price;

    public TNDS_Type(int id, String type_name, int type_tax_price) {
        this.id = id;
        this.type_name = type_name;
        this.type_tax_price = type_tax_price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public int getType_tax_price() {
        return type_tax_price;
    }

    public void setType_tax_price(int type_tax_price) {
        this.type_tax_price = type_tax_price;
    }
    
    
}
