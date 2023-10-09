/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author chun
 */
public class Form_TNDS {
         private int ftnds_id;
        private int ln_id;
        private int type_id;
        private int ftnds_totalPrice;
        private int contract_id;

    public Form_TNDS(int ftnds_id, int ln_id, int type_id, int ftnds_totalPrice, int contract_id) {
        this.ftnds_id = ftnds_id;
        this.ln_id = ln_id;
        this.type_id = type_id;
        this.ftnds_totalPrice = ftnds_totalPrice;
        this.contract_id = contract_id;
    }

    public int getFtnds_id() {
        return ftnds_id;
    }

    public void setFtnds_id(int ftnds_id) {
        this.ftnds_id = ftnds_id;
    }

    public int getLn_id() {
        return ln_id;
    }

    public void setLn_id(int ln_id) {
        this.ln_id = ln_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public int getFtnds_totalPrice() {
        return ftnds_totalPrice;
    }

    public void setFtnds_totalPrice(int ftnds_totalPrice) {
        this.ftnds_totalPrice = ftnds_totalPrice;
    }

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }
}
