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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Claims;
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
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("getAllContractOfUser:" + ex.getMessage());
        }
        return null;
    }
    
      public ArrayList<NewC> getPendingContractOfUser(int id) {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where u.user_id =? and (contract_status='pending' )";
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
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("getAllContractOfUser:" + ex.getMessage());
        }
        return null;
    }
    
    public ArrayList<NewC> getActiveContractOfUser(int id) {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where u.user_id =? and (contract_status='Active')";
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
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("getActiveContractOfUser:" + ex.getMessage());
        }
        return null;
    }
    
    public ArrayList<NewC> getExpiredContractOfUser(int id) {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where u.user_id =? and (contract_status='Expired')";
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
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("getExpiredContractOfUser:" + ex.getMessage());
        }
        return null;
    }
    

    //for calim = dat trang thai la Active
    public ArrayList<Contract> getAllContractOfUserThatActive(int id) {
        try {
            ArrayList<Contract> list = new ArrayList<>();
            String sql = "select * from Contract where contract_status = 'Active' and user_id = ?";
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
                list.add(new Contract(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //all contract of chung
    public ArrayList<Contract> getAllContractChung() {
        try {
            ArrayList<Contract> list = new ArrayList<>();
            String sql = "select * from Contract";
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
                list.add(new Contract(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));
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
            String sql = "SELECT TOP 3 [contract_id], u.[user_id], contract_startDate, contract_endDate, ip.[ip_id], [fvc_id], [ftnds_id], [total_price], [contract_status], user_fullname, ip_name\n"
                    + "FROM [Contract] c\n"
                    + "JOIN Users u ON c.user_id = u.user_id\n"
                    + "JOIN Insurance_Products ip ON c.ip_id = ip.ip_id\n"
                    + "WHERE contract_status IN ('Active', 'Reject', 'Expired')\n"
                    + "ORDER BY contract_id DESC;";
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
                return (new ContractTNDS(rs.getInt(1),
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
    
    public User getUserInfoByName (String fullname) {
        try {
            String sql = "SELECT * FROM Users WHERE user_fullname=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullname);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setUser_id(rs.getInt(1));
                u.setUser_fullName(rs.getString(2));
                u.setUser_email(rs.getString(3));
                u.setUser_password(rs.getString(4));
                u.setUser_dob(rs.getDate(5));
                u.setUser_address(rs.getString(6));
                u.setUser_phoneNum(rs.getString(7));
                u.setUser_iden(rs.getString(8));
                u.setUser_image(rs.getString(9));
                u.setUser_role(rs.getString(10));
                return u;
            }
            
        }catch (Exception ex) {
            System.out.println("getUserInfoByName:" + ex.getMessage());

        }
        return null;
    }
    
//    Hàm chữa cháy vì contractVatChat thiếu giá xe
    public int getBrandIDByName (String brandName) {
        try {
            String sql = "SELECT brand_id FROM Brands WHERE brand_name=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, brandName);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        }catch (Exception ex) {
            System.out.println("getBrandIDByName:" + ex.getMessage());
        }
        return 0;
    }
    
    //    Hàm chữa cháy vì contractVatChat thiếu giá xe
    public int getModelIDByName (String modelName) {
        try {
            String sql = "SELECT model_id FROM Models WHERE model_name=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, modelName);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        }catch (Exception ex) {
            System.out.println("getModelidByName:" + ex.getMessage());
        }
        return 0;
    }
    
    //    Hàm chữa cháy vì contractVatChat thiếu giá xe
    public int getModelPrice (String modelName, String brandName) {
        int model_id = getModelIDByName(modelName);
        int brand_id = getBrandIDByName(brandName);
        
        try {
            String sql = "SELECT model_price FROM Models WHERE model_id=? AND brand_id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, model_id);
            st.setInt(2, brand_id);
            ResultSet rs = st.executeQuery();
            
            while (rs.next()) {
                return rs.getInt(1);
            }
        }catch (Exception ex) {
            System.out.println("getModelPrice:" + ex.getMessage());
        }
        return 0;
    }

    public ContractVatchat getVatchatbyId(int id) {
        try {
            String sql = "SELECT c.contract_id, fvc.fvc_id, u.user_fullname, ip.ip_name, b.brand_name, m.model_name, fvc.[fvc_deviceNum], fvc.fvc_deviceChassisNum, fvc.fvc_licensePlates, fvc.[startDate], fvc.[endDate], pt.pt_percent, dl.deduc_percent, fvc.fvc_totalPrice, fvc.fvc_status FROM [Contract] c JOIN [Form_Vatchat] fvc ON c.fvc_id = fvc.fvc_id JOIN Users u ON c.user_id = u.user_id JOIN Insurance_Products ip ON c.ip_id = ip.ip_id JOIN Brands b ON fvc.brand_id = b.brand_id JOIN Models m ON m.model_id = fvc.model_id JOIN Package_Type pt ON fvc.pt_id = pt.pt_id JOIN Deductible_Level dl ON fvc.deduc_id = dl.deduc_id WHERE c.contract_id = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return (new ContractVatchat(rs.getInt(1),
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

    public NewC getContractById(int contract_id) {
        try {
            String sql = "select u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],\n"
                    + "	[total_price],[contract_status], ip_name, u.user_iden, u.user_fullname, u.user_mail,\n"
                    + "u.user_phoneNum, u.user_dob, u.user_address\n"
                    + "from [Contract] c \n"
                    + "	join Users u on c.user_id = u.user_id \n"
                    + "	join Insurance_Products ip on c.ip_id=ip.ip_id \n"
                    + "where c.contract_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, contract_id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int user_id = rs.getInt(1);
                Date contract_startDate = rs.getDate(2);
                Date contract_endDate = rs.getDate(3);
                int ip_id = rs.getInt(4);
                int fvc_id = rs.getInt(5);
                int ftnds_id = rs.getInt(6);
                int total_price = rs.getInt(7);
                String contract_status = rs.getString(8);
                String ip_name = rs.getString(9);
                String user_iden = rs.getString(10);
                String user_fullname = rs.getString(11);
                String user_mail = rs.getString(12);
                String user_phoneNum = rs.getString(13);
                Date user_dob = rs.getDate(14);
                String user_address = rs.getString(15);
                NewC newC = new NewC(user_iden, user_phoneNum, user_fullname, user_dob, user_mail, user_address, ip_name, contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status);
                return newC;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public boolean updateContractStatus(int contractID, String contractStatus) {
        try {
            String sql = "UPDATE [dbo].[Contract]\n"
                    + "   SET [contract_status] = ?\n"
                    + " WHERE contract_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, contractStatus);
            ps.setInt(2, contractID);

            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, e.getMessage());
        }
        return false;
    }

    //claim solve
    //create new blog
    public boolean createClaim(
            int user_id,
            int contract_id,
            String creationDate,
            String claim_description,
            String claim_img_des,
            String claim_file_des,
            String claim_bank,
            String claim_bank_number,
            //Pending + Accept + Reject
            String claim_status) {
        try {
            String sql = "insert into Claims values((SELECT COALESCE(MAX(claim_id), 0) from Claims)+1,?,?,?,?,?,?,?,?,?) ;";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setInt(1, user_id);
            pstm.setInt(2, contract_id);
            pstm.setString(3, creationDate);
            pstm.setString(4, claim_description);
            pstm.setString(5, claim_img_des);
            pstm.setString(6, claim_file_des);
            pstm.setString(7, claim_bank);
            pstm.setString(8, claim_bank_number);
            pstm.setString(9, claim_status);

            pstm.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //get all claim
    public ArrayList<Claims> getAllClaim() {
        try {
            ArrayList<Claims> list = new ArrayList<>();
            String sql = "select * from Claims";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int claim_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                int contract_id = rs.getInt(3);
                String creationDate = rs.getString(4);
                String claim_description = rs.getString(5);
                String claim_img_des = rs.getString(6);
                String claim_file_des = rs.getString(7);
                String claim_bank = rs.getString(8);
                String claim_bank_number = rs.getString(9);
                //Pending + Accept + Reject
                String claim_status = rs.getString(10);

                list.add(new Claims(claim_id, user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status));

            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //get claim by claim id
    public Claims getClaimById(int claim_idIn) {
        try {
            String sql = "select * from Claims where claim_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, claim_idIn);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int claim_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                int contract_id = rs.getInt(3);
                String creationDate = rs.getString(4);
                String claim_description = rs.getString(5);
                String claim_img_des = rs.getString(6);
                String claim_file_des = rs.getString(7);
                String claim_bank = rs.getString(8);
                String claim_bank_number = rs.getString(9);
                //Pending + Accept + Reject
                String claim_status = rs.getString(10);
                Claims cl = new Claims(claim_id, user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status);
                return cl;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //get 1 claim by user id
    public Claims getClaimByUserId(int user_idIn) {
        try {
            String sql = "select * from Claims where claim_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, user_idIn);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int claim_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                int contract_id = rs.getInt(3);
                String creationDate = rs.getString(4);
                String claim_description = rs.getString(5);
                String claim_img_des = rs.getString(6);
                String claim_file_des = rs.getString(7);
                String claim_bank = rs.getString(8);
                String claim_bank_number = rs.getString(9);
                //Pending + Accept + Reject
                String claim_status = rs.getString(10);
                Claims cl = new Claims(claim_id, user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status);
                return cl;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //get list claim of 1 user id

    public ArrayList<Claims> getAllClaimByUserId(int user_idIn) {
        try {
            ArrayList<Claims> list = new ArrayList<>();
            String sql = "select * from Claims where user_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, user_idIn);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int claim_id = rs.getInt(1);
                int user_id = rs.getInt(2);
                int contract_id = rs.getInt(3);
                String creationDate = rs.getString(4);
                String claim_description = rs.getString(5);
                String claim_img_des = rs.getString(6);
                String claim_file_des = rs.getString(7);
                String claim_bank = rs.getString(8);
                String claim_bank_number = rs.getString(9);
                //Pending + Accept + Reject
                String claim_status = rs.getString(10);

                list.add(new Claims(claim_id, user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status));

            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //contract co active

    public ArrayList<Contract> getContractOptionActive(int id) {
        try {
            ArrayList<Contract> list = new ArrayList<>();
            String sql = "SELECT *\n"
                    + "FROM Contract\n"
                    + "WHERE NOT EXISTS (\n"
                    + "    SELECT 1\n"
                    + "    FROM Claims\n"
                    + "    WHERE  Contract.contract_id = Claims.contract_id\n"
                    + ") AND Contract.contract_status = 'Active' AND Contract.user_id = ?";
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
                list.add(new Contract(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //laasy contrac ma chua yeu cau claim

    public ArrayList<Contract> getContractOption(int id) {
    try {
        ArrayList<Contract> list = new ArrayList<>();
        String sql = "SELECT * " +
                     "FROM Contract " +
                     "WHERE (NOT EXISTS (SELECT 1 FROM Claims WHERE Contract.contract_id = Claims.contract_id) " +
                     "      OR EXISTS (SELECT 1 FROM Claims WHERE Contract.contract_id = Claims.contract_id AND Claims.claim_status = 'Reject')) " +
                     "      AND Contract.user_id = ?";
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
            list.add(new Contract(contract_id, user_id, contract_startDate, contract_endDate, ip_id, fvc_id, ftnds_id, total_price, contract_status));
        }
        return list;
    } catch (SQLException ex) {
        Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
}

    //get 1 contract by claim id

    public Contract getOneContractThatMatchClaim(int claim_id) {
        try {
            String sql = "SELECT Contract.*\n"
                    + "FROM Contract\n"
                    + "JOIN Claims ON Contract.contract_id = Claims.contract_id\n"
                    + "WHERE Claims.claim_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, claim_id);
            ResultSet rs = ps.executeQuery();

            rs.next();
            Contract ct = new Contract();
            ct.setContract_id(rs.getInt("contract_id"));
            ct.setUser_id(rs.getInt("user_id"));
            ct.setContract_startDate(rs.getDate("contract_startDate"));
            ct.setContract_endDate(rs.getDate("contract_endDate"));
            ct.setIp_id(rs.getInt("ip_id"));
            ct.setFvc_id(rs.getInt("fvc_id"));
            ct.setFtnds_id(rs.getInt("ftnds_id"));
            ct.setTotal_price(rs.getInt("total_price"));
            ct.setContract_status(rs.getString("contract_status"));

            return ct;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //update claim
    public void updateCliamNO(String claim_id) {

        try {
            String sql = "update Claims set claim_status = 'Reject' where claim_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, claim_id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCliamYES(String claim_id) {
        try {
            String sql = "update Claims set claim_status = 'Accept' where claim_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, claim_id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //update end date + status contract

    public void updateEndDateAndContractStatus(String check, int contract_id) {
        try {
            String sql = "UPDATE Contract\n"
                    + "SET contract_endDate = GETDATE(), contract_status = ?\n"
                    + "WHERE contract_id = ?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, check);
            ps.setInt(2, contract_id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //get lít cail != pending
    public ArrayList<Claims> getListCalimKhacPending() {
        try {
            ArrayList<Claims> cl = new ArrayList<>();
            String sql = "select * from Claims where claim_status != 'pending'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int claim_id = rs.getInt(1);
                int user_id  = rs.getInt(2);
                int contract_id = rs.getInt(3);
                String creationDate = rs.getString(4);
                String claim_description = rs.getString(5);
                String claim_img_des = rs.getString(6);
                String claim_file_des = rs.getString(7);
                String claim_bank = rs.getString(8);
                String claim_bank_number = rs.getString(9);
                //pending + Accept + Reject
                String claim_status = rs.getString(10);
                cl.add(new Claims(claim_id, user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status));
            }
                return cl;
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<NewC> searchContract(String txtsearch) {
        try {
            ArrayList<NewC> list = new ArrayList<>();
            String sql = "select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where (contract_status='Active' or contract_status='Reject' or contract_status='Expired') and u.user_fullname like ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtsearch + "%");
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
    
    //cancel claim by claim id
    public void deleteClaimByClaimID (int claim_id) {
        try {
            String sql = "delete from Claims where claim_id = ?";
            PreparedStatement ps =connection.prepareStatement(sql);
            ps.setInt(1, claim_id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ContractDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    
    public List<NewC> getListbyPage(List<NewC> list, int start, int end) {
        ArrayList<NewC> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    
    
    public static void main(String[] args) {
        ContractDAO cd = new ContractDAO();
       
//        ArrayList<Claims> cl = cd.getAllClaim();
//        for (Claims claims : cl) {
//            System.out.println(claims.toString());
//        }

//        Claims cl = cd.getClaimById(1);
//        System.out.println(cl.toString());
//        ArrayList<Contract> ct = cd.getAllContractChung();
//        for (Contract contract : ct) {
//            System.out.println(contract.toString());
//        }
//        ContractTNDS b = cd.getTNDSbyId(1);
//        System.out.println(b.toString());
//        ArrayList<Contract> ct = cd.getContractOptionActive(18);
//        for (Contract newC : ct) {
//            System.out.println(newC.toString());
//        }
//        Contract b = cd.getOneContractThatMatchClaim(4);
//        System.out.println(b.toString());
//cd.createClaim(1, 1, "2023-06-06", "2023-06-06", "2023-06-06", "2023-06-06", "2023-06-06", "2023-06-06", "2023-06-06");
//        ContractTNDS tnds = cd.getTNDSbyId(2);
//        System.out.println(tnds.toString());
//        
//        ContractVatchat vc = cd.getVatchatbyId(2);
//        System.out.println(vc.toString());
//        cd.updateCliamNO("1");
//        cd.updateCliamYES("1");
//        ArrayList<Contract> list = cd.getContractOption(20);
//        System.out.println(list);
        
//        cd.deleteClaimByClaimID(5);
                     String fvc_bienXe = "25B2-12323"; //License plates
             if(fvc_bienXe.matches("^[1-9][0-9][A-Za-z][1-9][-][0-9]*[1-9][0-9]*$")){
                 System.out.println("ok");
             }else {
                 System.out.println("no");
             }

    }




}
