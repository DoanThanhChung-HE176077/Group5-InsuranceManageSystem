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
import model.ContractTNDS;
import model.ContractVatchat;
import model.Form_Vatchat;
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

    public ArrayList<NewC> getPendingContracts() {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],\n"
                    + "	[total_price],[contract_status],user_fullname,ip_name \n"
                    + "from [Contract] c \n"
                    + "	join Users u on c.user_id = u.user_id \n"
                    + "	join Insurance_Products ip on c.ip_id=ip.ip_id \n"
                    + "where contract_status = 'Pending'";
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
    
    public ArrayList<NewC> getActiveContracts() {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],\n"
                    + "	[total_price],[contract_status],user_fullname,ip_name \n"
                    + "from [Contract] c \n"
                    + "	join Users u on c.user_id = u.user_id \n"
                    + "	join Insurance_Products ip on c.ip_id=ip.ip_id \n"
                    + "where contract_status = 'Active'";
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
    public ContractTNDS getTNDSbyId(int id) {
        String sql = "  select c.contract_id, u.user_fullname,ip.ip_name,ftnds.ftnds_id, ftnds_loaiXe,[ftnds_soMay],[ftnds_bienXe],[ftnds_soKhung],[ftnds_startDate],[ftnds_endDate],[ftnds_mucTrachNhiem],[ftnds_soNguoi],[ftnds_tongChiPhi],[ftnds_status] from [Contract] c join [Form_TNDS] ftnds on c.ftnds_id = ftnds.ftnds_id join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id  where c.contract_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return( new ContractTNDS(rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getDate(9),
                    rs.getDate(10),
                    rs.getString(11),
                    rs.getString(12),
                    rs.getString(13),
                    rs.getString(14)));
            }
        } catch (Exception ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return null;
    }
    public ContractVatchat getVatchatbyId(int id) {    
    try {
            String sql = "SELECT c.contract_id, fvc.fvc_id, u.user_fullname, ip.ip_name, b.brand_name, m.model_name, fvc.[fvc_deviceNum], fvc.fvc_deviceChassisNum, fvc.fvc_licensePlates, fvc.[startDate], fvc.[endDate], pt.pt_percent, dl.deduc_percent, fvc.fvc_totalPrice, fvc.fvc_status FROM [Contract] c JOIN [Form_Vatchat] fvc ON c.fvc_id = fvc.fvc_id JOIN Users u ON c.user_id = u.user_id JOIN Insurance_Products ip ON c.ip_id = ip.ip_id JOIN Brands b ON fvc.brand_id = b.brand_id JOIN Models m ON m.model_id = fvc.model_id JOIN Package_Type pt ON fvc.pt_id = pt.pt_id JOIN Deductible_Level dl ON fvc.deduc_id = dl.deduc_id WHERE c.contract_id = ?";
        PreparedStatement st = connection.prepareStatement(sql);
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            return( new ContractVatchat(rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getDate(10),
                    rs.getDate(11),
                    rs.getString(12),
                    rs.getString(13),
                    rs.getString(14),
                    rs.getString(15)));
            
        }
    } catch (Exception ex) {
        Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
}


     public static void main(String[] args) {
        ContractDAO cd = new ContractDAO();

        ContractTNDS b = cd.getTNDSbyId(1);
         System.out.println(b.toString());

    }
    
}
