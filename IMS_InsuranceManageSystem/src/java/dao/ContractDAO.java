/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DBContext.connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Contract;
import model.User;



/**
 *
 * @author chun
 */
public class ContractDAO {
    public ArrayList<Contract> getAllContractOfUser(int id) {
        ArrayList<Contract> list = new ArrayList<>();

        try {
            String strSQL = "  select [contract_id],u.[user_id],contract_startDate,contract_endDate,ip.[ip_id],[fvc_id],[ftnds_id],[total_price],[contract_status],user_fullname,ip_name from [Contract] c join Users u on c.user_id = u.user_id join Insurance_Products ip on c.ip_id=ip.ip_id where u.user_id=" +id ;
            PreparedStatement pstm = connection.prepareStatement(strSQL);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int contractId = rs.getInt(1);
                int userId = rs.getInt(2);
                Date contractStartDate = rs.getDate(3);
                Date contractEndDate = rs.getDate(4);
                int ipId = rs.getInt(5);
                int fvcId = rs.getInt(6);
                int ftndsId = rs.getInt(7);
                int totalPrice = rs.getInt(8);
                String contractStatus = rs.getString(9);

                Contract contract = new Contract(contractId, userId, contractStartDate, contractEndDate, ipId, fvcId, ftndsId, totalPrice, contractStatus);
                list.add(contract);
            }
        } catch (Exception e) {
            System.out.println("getAllContractOfUser: " + e.getMessage());
        }
        return list;
    }
}
