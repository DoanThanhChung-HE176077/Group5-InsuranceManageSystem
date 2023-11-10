/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author chun
 */
public class Claims {
    int claim_id;
    int user_id;
    int contract_id;
    String creationDate;
    String claim_description;
    String claim_img_des;
    String claim_file_des;
    String claim_bank;
    String claim_bank_number;
    //pending + Accept + Reject
    String claim_status;

    public Claims() {
    }

    public Claims(int claim_id, int user_id, int contract_id, String creationDate, String claim_description, String claim_img_des, String claim_file_des, String claim_bank, String claim_bank_number, String claim_status) {
        this.claim_id = claim_id;
        this.user_id = user_id;
        this.contract_id = contract_id;
        this.creationDate = creationDate;
        this.claim_description = claim_description;
        this.claim_img_des = claim_img_des;
        this.claim_file_des = claim_file_des;
        this.claim_bank = claim_bank;
        this.claim_bank_number = claim_bank_number;
        this.claim_status = claim_status;
    }

    public String getClaim_bank() {
        return claim_bank;
    }

    public void setClaim_bank(String claim_bank) {
        this.claim_bank = claim_bank;
    }

    public String getClaim_bank_number() {
        return claim_bank_number;
    }

    public void setClaim_bank_number(String claim_bank_number) {
        this.claim_bank_number = claim_bank_number;
    }



    public int getClaim_id() {
        return claim_id;
    }

    public void setClaim_id(int claim_id) {
        this.claim_id = claim_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getContract_id() {
        return contract_id;
    }

    public void setContract_id(int contract_id) {
        this.contract_id = contract_id;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getClaim_description() {
        return claim_description;
    }

    public void setClaim_description(String claim_description) {
        this.claim_description = claim_description;
    }

    public String getClaim_img_des() {
        return claim_img_des;
    }

    public void setClaim_img_des(String claim_img_des) {
        this.claim_img_des = claim_img_des;
    }

    public String getClaim_file_des() {
        return claim_file_des;
    }

    public void setClaim_file_des(String claim_file_des) {
        this.claim_file_des = claim_file_des;
    }

    public String getClaim_status() {
        return claim_status;
    }

    public void setClaim_status(String claim_status) {
        this.claim_status = claim_status;
    }

    @Override
    public String toString() {
        return "Claims{" + "claim_id=" + claim_id + ", user_id=" + user_id + ", contract_id=" + contract_id + ", creationDate=" + creationDate + ", claim_description=" + claim_description + ", claim_img_des=" + claim_img_des + ", claim_file_des=" + claim_file_des + ", claim_status=" + claim_status + '}';
    }

    
    
}
