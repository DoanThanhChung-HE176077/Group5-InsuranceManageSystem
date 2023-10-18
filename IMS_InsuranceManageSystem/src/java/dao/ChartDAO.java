/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
<<<<<<< HEAD:IMS_InsuranceManageSystem/src/java/Dao/ChartDAO.java
package Dao;
=======
package dao;
>>>>>>> chungdthe176077:IMS_InsuranceManageSystem/src/java/dao/ChartDAO.java

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thant
 */
public class ChartDAO extends DBContext{
    
    
    
    
    public static List<Integer> getChartData() {
        List<Integer> data = new ArrayList<>();

        try {
            String strSQL = "SELECT COUNT(*) FROM Contract;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                
            }
        } catch (Exception e) {
            System.out.println("addUser: " + e.getMessage());
        }

        return data;
    }
    
    public static int getChartData2() {
        List<Integer> data = new ArrayList<>();
        int temp;

        try {
            String strSQL = "SELECT COUNT(*) FROM Contract;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                temp = rs.getInt(1);
                return temp;
            }
        } catch (Exception e) {
            System.out.println("getChartData2: " + e.getMessage());
        }

        return 0;
    }
}
