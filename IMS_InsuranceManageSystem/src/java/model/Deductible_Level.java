/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Deductible_Level {
    int deduc_id;
    float deduc_percent;

    public Deductible_Level() {
    }

    public Deductible_Level(int deduc_id, float deduc_percent) {
        this.deduc_id = deduc_id;
        this.deduc_percent = deduc_percent;
    }

    public int getDeduc_id() {
        return deduc_id;
    }

    public void setDeduc_id(int deduc_id) {
        this.deduc_id = deduc_id;
    }

    public float getDeduc_percent() {
        return deduc_percent;
    }

    public void setDeduc_percent(float deduc_percent) {
        this.deduc_percent = deduc_percent;
    }

    @Override
    public String toString() {
        return "Deductible_Level{" + "deduc_id=" + deduc_id + ", deduc_percent=" + deduc_percent + '}';
    }
    
    
}
