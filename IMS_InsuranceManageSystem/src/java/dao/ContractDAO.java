/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DBContext.connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contract;
import model.NewBl;
import model.NewC;
import model.User;

/**
 *
 * @author chun
 */

public class ContractDAO extends DBContext {


    public ArrayList<NewC> getAllContractOfUser(int id) {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where u.user_id =? and (contract_status='Active' or contract_status='Reject' or contract_status='Expired' )";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {




                int contract_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                Date contract_startDate = rs.getDate(3);
                Date contract_endDate = rs.getDate(4);
                int ip_id = rs.getInt(5);
                int fvc_id = rs.getInt(6);
                int ftnds_id = rs.getInt(7);
                int total_price = rs.getInt(8);
                String contract_status = rs.getString(9);
                String user_fullname = rs.getString(10);
                String ip_name = rs.getString(11);

                list.add(new NewC(user_fullname, ip_name, contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));
                NewC contract = new NewC(user_fullname, ip_name, contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status);




            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }


    public static void main(String[] args) {
        ContractDAO cd = new ContractDAO();
        ArrayList<NewC> list = cd.getAllContractOfUser(1);
        System.out.println(list);
    }
    public ArrayList<NewC> getAllContract() {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where contract_status='Active' or contract_status='Reject' or contract_status='Expired' ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int contract_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                Date contract_startDate = rs.getDate(3);
                Date contract_endDate = rs.getDate(4);
                int ip_id = rs.getInt(5);
                int fvc_id = rs.getInt(6);
                int ftnds_id = rs.getInt(7);
                int total_price = rs.getInt(8);
                String contract_status = rs.getString(9);
                String user_fullname = rs.getString(10);
                String ip_name = rs.getString(11);

                list.add(new NewC(user_fullname, ip_name, contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));

            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<NewC> getNewContract() {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql ="SELECT TOP 3 [contract_id], u.[user_id], contract_startDate, contract_endDate, ip.[ip_id], [fvc_id], [ftnds_id], [total_price], [contract_status], user_fullname, ip_name\n" +
"FROM [Contract] c\n" +
"JOIN Users u ON c.user_id = u.user_id\n" +
"JOIN Insurance_Products ip ON c.ip_id = ip.ip_id\n" +
"WHERE contract_status IN ('Active', 'Reject', 'Expired')\n" +
"ORDER BY contract_id DESC;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int contract_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                Date contract_startDate = rs.getDate(3);
                Date contract_endDate = rs.getDate(4);
                int ip_id = rs.getInt(5);
                int fvc_id = rs.getInt(6);
                int ftnds_id = rs.getInt(7);
                int total_price = rs.getInt(8);
                String contract_status = rs.getString(9);
                String user_fullname = rs.getString(10);
                String ip_name = rs.getString(11);

                list.add(new NewC(user_fullname, ip_name, contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));

            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }


}
