/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DBContext.connection;
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
                list.add(new Contract(rs.getString(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (Exception e) {
            System.out.println("getAllContractOfUser: " + e.getMessage());
        }
        return list;
    }
}
