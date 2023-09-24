/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller.admin;

import Model.InsuranceProduct;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class test {
    public static void main(String[] args) {
        InsuranceProduct IP = new InsuranceProduct();
        ArrayList<InsuranceProduct> list = IP.getALLIP();
        for(InsuranceProduct o :list){
            System.out.println(o);
        }
        if (list.isEmpty()){
            System.out.println("rong");
        }else{
            System.out.println("ko rong");
        }
    }
}
