/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author thant
 */
public class ChartDAO extends DBContext{
    
    
    //Lấy số người dùng trong hệ thống
    public static int getUsersNumber() {
        List<Integer> data = new ArrayList<>();
        int temp;

        try {
            String strSQL = "SELECT COUNT(*) FROM Users;";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                temp = rs.getInt(1);
                return temp;
            }
        } catch (Exception e) {
            System.out.println("getUserNumber: " + e.getMessage());
        }

        return 0;
    }
    
    //Lấy số yêu cầu hợp đồng trong hệ thống
    public static int getPendingContracts() {
        List<Integer> data = new ArrayList<>();
        int temp;

        try {
            String strSQL = "SELECT COUNT(*) FROM Contract where contract_status = 'Pending'";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                temp = rs.getInt(1);
                return temp;
            }
        } catch (Exception e) {
            System.out.println("getUserNumber: " + e.getMessage());
        }

        return 0;
    }
    
    //Lấy số yêu cầu bồi thường trong hệ thống
    public static int getPendingClaims() {
        List<Integer> data = new ArrayList<>();
        int temp;

        try {
            String strSQL = "SELECT COUNT(*) FROM Claims";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                temp = rs.getInt(1);
                return temp;
            }
        } catch (Exception e) {
            System.out.println("getPendingClaims: " + e.getMessage());
        }

        return 0;
    }
    
    //Lấy số bài viêt trong hệ thống
    public static int getPendingBlogs() {
        List<Integer> data = new ArrayList<>();
        int temp;

        try {
            
            String strSQL = "SELECT COUNT(*) FROM Blogs";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                temp = rs.getInt(1);
                return temp;
            }
        } catch (Exception e) {
            System.out.println("getPendingBlogs: " + e.getMessage());
        }

        return 0;
    }
    
    // Hàm đóng kết nối
    public static void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            System.out.println("Failed to close connection: " + e.getMessage());
        }
    }
    
    //Lấy số bảo hiểm đăng kí trong tháng
    public static List<Integer> getContractsByMonth() {
        List<Integer> data = new ArrayList<>();

        try {
            String strSQL = "SELECT contract_startDate FROM Contract";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();

            // Tạo một map để lưu số lượng record của mỗi tháng
            Map<Integer, Integer> monthCountMap = new HashMap<>();

            // Lặp qua các bản ghi
            while (rs.next()) {
                // Lấy startdate của contract
                java.sql.Date startDate = rs.getDate("contract_startDate");

                // Lấy tháng từ của startdate
                int month = startDate.toLocalDate().getMonthValue();

                // Cập nhật số lượng bản ghi của tháng tương ứng trong map
                monthCountMap.put(month, monthCountMap.getOrDefault(month, 0) + 1);
            }

            // Lặp qua các tháng từ 1 đến 12 và thêm số lượng bản ghi vào danh sách
            for (int i = 1; i <= 12; i++) {
                data.add(monthCountMap.getOrDefault(i, 0));
            }

        } catch (SQLException e) {
            System.out.println("getContractsByMonth: " + e.getMessage());
        }

        return data;
    }
    
    //Lấy số yêu cầu bồi thường theo tháng
    public static List<Integer> getClaimsByMonth() {
        List<Integer> data = new ArrayList<>();

        try {
            String strSQL = "SELECT contract_startDate FROM Claims";
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();

            // Tạo một map để lưu số lượng record của mỗi tháng
            Map<Integer, Integer> monthCountMap = new HashMap<>();

            // Lặp qua các bản ghi
            while (rs.next()) {
                // Lấy startdate của contract
                java.sql.Date startDate = rs.getDate("claim_requestDate");

                // Lấy tháng từ của startdate
                int month = startDate.toLocalDate().getMonthValue();

                // Cập nhật số lượng bản ghi của tháng tương ứng trong map
                monthCountMap.put(month, monthCountMap.getOrDefault(month, 0) + 1);
            }

            // Lặp qua các tháng từ 1 đến 12 và thêm số lượng bản ghi vào danh sách
            for (int i = 1; i <= 12; i++) {
                data.add(monthCountMap.getOrDefault(i, 0));
            }

        } catch (SQLException e) {
            System.out.println("getClaimsByMonth: " + e.getMessage());
        }

        return data;
    }
    
    
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
    
    
    public static void main(String[] args) {
//        for (int i : getContractsByMonth()) {
//            System.out.println(i +", ");
//        }

        System.out.println(getPendingBlogs());
    }
    
}
