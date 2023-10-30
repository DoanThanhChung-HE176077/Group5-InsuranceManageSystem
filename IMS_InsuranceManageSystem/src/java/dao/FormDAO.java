/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Form_TNDS;
import model.TNDS_Level;
import model.TNDS_LevelNop;
import model.TNDS_Type;
import model.User;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Brands;
import model.Deductible_Level;
import model.Models;
import model.Package_Type;

/**
 *
 * @author Dell
 */
public class FormDAO extends DBContext {

    public ArrayList<TNDS_Type> getAllType() {
        ArrayList<TNDS_Type> list = new ArrayList<>();
        String sql = "select * from TNDS_Type";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new TNDS_Type(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            };
        } catch (Exception E) {

        }
        return list;
    }

    public ArrayList<TNDS_Level> getAllLevel() {
        ArrayList<TNDS_Level> list = new ArrayList<>();
        String sql = "select * from TNDS_Level ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new TNDS_Level(rs.getInt(1), rs.getString(2)));
            };
        } catch (Exception E) {

        }
        return list;
    }

    public ArrayList<Integer> getNumberOfPerson() {
        ArrayList<Integer> list = new ArrayList<>();
        String sql = "  select distinct ln_nop from TNDS_LevelNop ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add((rs.getInt(1)));
            };
        } catch (Exception E) {

        }
        return list;
    }

    public TNDS_LevelNop getLevelNop(int ln_nop, int lv_id) {
        String sql = "  SELECT * FROM TNDS_LevelNop \n"
                + "WHERE ln_nop = ? \n"
                + "AND lv_id =?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, ln_nop);
            st.setInt(2, lv_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return (new TNDS_LevelNop(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
            };
        } catch (Exception E) {

        }
        return null;
    }

    public TNDS_Type getType(int type_id) {
        String sql = "select * from TNDS_Type where type_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, type_id);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return (new TNDS_Type(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            };
        } catch (Exception E) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, E);
        }
        return null;
    }

    public void insertBill(Form_TNDS object) {
        String sql = "insert into Form_TNDS values((SELECT COALESCE(MAX(ftnds_id), 0) from Form_TNDS)+1,?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, object.getLoaiXe());
            st.setString(2, object.getSoMay());
            st.setString(3, object.getBienXe());
            st.setString(4, object.getSoKhung());
            st.setDate(5, object.getStartDate());
            st.setDate(6, object.getEndDate());
            st.setString(7, object.getMucTrachNhiem());
            st.setString(8, object.getSoNguoi());
            st.setString(9, object.getTongChiPhi());
            st.setInt(10, object.getUserId());
            st.setString(11, object.getIp_id());
            st.setString(12, object.getStatus());

            st.executeUpdate();

        } catch (Exception E) {
            System.out.println("Loi");
        }

    }

    public TNDS_Level getTNDS_LevelbyId(int id) {
        try {
            String sql = "select * from TNDS_Level where lv_id  = ?";
             PreparedStatement st = connection.prepareStatement(sql);
             st.setInt(1, id);
             ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return (new TNDS_Level(rs.getInt(1), rs.getString(2)));
            };
        } catch (Exception E) {
            
        }
        return null;
    }
    
    
    //get all models
    public ArrayList<Models> getVatChatModels() {
        try {
            ArrayList<Models> getAll = new ArrayList<>();
            String sql = "select * from Models";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int model_id = rs.getInt(1);
                String model_name = rs.getString(2);
                int model_price = rs.getInt(3);
                int brand_id = rs.getInt(4);
                getAll.add(new Models(model_id, model_name, model_price, brand_id));
            }
            return getAll;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //get all brand for vat chat 
     public ArrayList<Brands> getVatChatBrands() {
         try {
             ArrayList<Brands> getAll = new ArrayList<>();
             String sql = "select * from Brands";
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery();
             while (rs.next()) {
                 int brand_id = rs.getInt(1);
                 String brand_name = rs.getString(2);
                 getAll.add(new Brands(brand_id, brand_name));
             }
             return getAll;
         } catch (SQLException ex) {
             Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
         }
         return null;
    }
     //get all deduc
    public ArrayList<Deductible_Level> getVatChatDeduc() {
        try {
            ArrayList<Deductible_Level> getAll = new ArrayList<>();
            String sql = "  select * from Deductible_Level";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int deduc_id = rs.getInt(1);
                float deduct_percent = rs.getFloat(2);
                getAll.add(new Deductible_Level(deduc_id, deduct_percent));
            }
            return getAll;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //get all pack
    public ArrayList<Package_Type> getVatChatPack() {
        try {
            ArrayList<Package_Type> getAll = new ArrayList<>();
            String sql = "select * from Package_Type";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pt_id = rs.getInt(1);
                float pt_percent = rs.getFloat(2);
                getAll.add(new Package_Type(pt_id, pt_percent));
            }
            return getAll;
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Form_TNDS getForm_TNDS() {
        String sql = "SELECT TOP (1000) [ftnds_id]\n"
                + "      ,[ftnds_loaiXe]\n"
                + "      ,[ftnds_soMay]\n"
                + "      ,[ftnds_bienXe]\n"
                + "      ,[ftnds_soKhung]\n"
                + "      ,[ftnds_startDate]\n"
                + "      ,[ftnds_endDate]\n"
                + "      ,[ftnds_mucTrachNhiem]\n"
                + "      ,[ftnds_soNguoi]\n"
                + "      ,[ftnds_tongChiPhi]\n"
                + "      ,[user_id]\n"
                + "      ,[ip_id]\n"
                + "      ,[ftnds_status]\n"
                + "  FROM [Form_TNDS] where ftnds_id = (SELECT TOP 1 ftnds_id\n"
                + "FROM [Form_TNDS]\n"
                + "ORDER BY ftnds_id DESC)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return (new Form_TNDS(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
                         rs.getDate(6), rs.getDate(7), rs.getString(8), rs.getString(9), rs.getString(10),
                         rs.getInt(11), rs.getString(12), rs.getString(13)));
            };
            
        } catch (Exception E) {

        }
        return null;
    }
    
    //save input data to vatchat table with status : chua thaanh toan (unpaid)\
    public void insertVatChatToFormVatChat(
                    int brand_id,
                    int model_id,
                    int pt_id,
                    int deduc_id,
                    String startDate,
                    String endDate,
                    int totalPrice,
                    int user_id,
                    String fvc_deviceNum,
                    String fvc_deviceChassisNum,
                    String fvc_licensePlates,
                    String ip_id,
                    String fvc_status) {
            try {
                String sql = "insert into Form_Vatchat values((SELECT COALESCE(MAX(fvc_id), 0) from Form_Vatchat)+1 , "
                        + " ?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pstm = connection.prepareStatement(sql);
                pstm.setInt(1, brand_id);
                pstm.setInt(2, model_id);
                pstm.setInt(3, pt_id);
                pstm.setInt(4, deduc_id);
                pstm.setString(5, startDate);
                pstm.setString(6, endDate);
                pstm.setInt(7, totalPrice);
                pstm.setInt(8, user_id);
                pstm.setString(9, fvc_deviceNum);
                pstm.setString(10, fvc_deviceChassisNum);
                pstm.setString(11, fvc_licensePlates);
                pstm.setString(12, ip_id);
                pstm.setString(13, fvc_status);

                pstm.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(FormDAO.class.getName()).log(Level.SEVERE, null, ex);
            }        
       }
    
        //update fvc status after pay bill => paid
        public void updateStatusForLatestFormVatChat(String paid) {
             paid = "paid";
            try {
                // Get the latest fvc_id
                String selectLatestIdSql = "SELECT MAX(fvc_id) FROM Form_Vatchat";
                PreparedStatement selectLatestIdPstm = connection.prepareStatement(selectLatestIdSql);
                ResultSet resultSet = selectLatestIdPstm.executeQuery();

                if (resultSet.next()) {
                    int latestFvcId = resultSet.getInt(1);

                    // Update the status for the latest record
                    String updateStatusSql = "UPDATE Form_Vatchat SET fvc_status = ? WHERE fvc_id = ?";
                    PreparedStatement updateStatusPstm = connection.prepareStatement(updateStatusSql);
                    updateStatusPstm.setString(1, paid);
                    updateStatusPstm.setInt(2, latestFvcId);

                    int rowsUpdated = updateStatusPstm.executeUpdate();

                    if (rowsUpdated > 0) {
                        System.out.println("Status updated successfully for the latest fvc_id: " + latestFvcId);
                    } else {
                        System.out.println("No rows were updated for the latest fvc_id: " + latestFvcId);
                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(FormDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    

    public static void main(String[] args) {
        FormDAO dao = new FormDAO();
        TNDS_Type obj = dao.getType(4);
        System.out.println(obj.getType_name());

//        ArrayList<Deductible_Level> de = dao.getVatChatDeduc();
//        for (Deductible_Level deductible_Level : de) {
//            System.out.println(de.toString());
//        }
//        ArrayList<Brands> br = dao.getVatChatBrands();
//        for (Brands mybr : br) {
//            System.out.println(mybr.getBrand_id());
//        }

//        LocalDateTime currentDateTime = LocalDateTime.now();
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd-MM-yyyy");
//        String formattedDateTime = currentDateTime.format(formatter);
//        // Print the current date and time
//        System.out.println("Current Date and Time: " + formattedDateTime);

        
    }
}
