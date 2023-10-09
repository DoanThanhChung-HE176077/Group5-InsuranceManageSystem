/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Form_TNDS;
import Model.TNDS_Level;
import Model.TNDS_LevelNop;
import Model.TNDS_Type;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

/**
 *
 * @author Dell
 */
public class FormTNDS extends DBContext {

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

    public TNDS_LevelNop getLevelNop(int ln_nop,int lv_id) {
       
        String sql = "  SELECT * FROM TNDS_LevelNop \n"
                + "WHERE ln_nop = ? \n"
                + "AND lv_id =?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, ln_nop);
            st.setInt(2, lv_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return(new TNDS_LevelNop(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4)));
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
                return(new TNDS_Type(rs.getInt(1),rs.getString(2),rs.getInt(3)));
            };
        } catch (Exception E) {

        }
        return null;
    }
    public Form_TNDS getForm_TNDS(int type_id,int ln_id) {
       
        String sql = "select * from Form_TNDS where type_id = ? and ln_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, type_id);
            st.setInt(2, ln_id);
          
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return(new Form_TNDS(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5)));
            };
        } catch (Exception E) {

        }
        return null;
    }
    public static void main(String[] args) {
        FormTNDS dao = new FormTNDS();
        System.out.println(dao.getForm_TNDS(1, 1).getFtnds_totalPrice());
    }
}
