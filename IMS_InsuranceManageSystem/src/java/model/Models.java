/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Models {
    int model_id;
    String model_name;
    int model_price;
    int brand_id;

    public Models() {
    }

    
    public Models(int model_id, String model_name, int model_price, int brand_id) {
        this.model_id = model_id;
        this.model_name = model_name;
        this.model_price = model_price;
        this.brand_id = brand_id;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public String getModel_name() {
        return model_name;
    }

    public void setModel_name(String model_name) {
        this.model_name = model_name;
    }

    public int getModel_price() {
        return model_price;
    }

    public void setModel_price(int model_price) {
        this.model_price = model_price;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    @Override
    public String toString() {
        return "Models{" + "model_id=" + model_id + ", model_name=" + model_name + ", model_price=" + model_price + ", brand_id=" + brand_id + '}';
    }
    
    
}
