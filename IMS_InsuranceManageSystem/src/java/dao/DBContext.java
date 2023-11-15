package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author FPT University - PRJ301
 */
public class DBContext {
    public static Connection connection;
    protected PreparedStatement statement;
    protected ResultSet resultSet;
    
    public DBContext()
    {
        //@Students: You are allowed to edit user, pass, url variables to fit 
        //your system configuration
        //You can also add more methods for Database Interaction tasks. 
        //But we recommend you to do it in another class
        // For example : StudentDBContext extends DBContext , 
        //where StudentDBContext is located in dal package, 
        try {
            //enter pass and acc sql
            
            
                                    /*======= Edit SQL config here ========
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      >>>>>>>>>>>>>  CHUNG   <<<<<<<<<<<<
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      ======= Edit SQL config here ========*/
           
            String user = "sa1";
            String pass = "123";
            String url = "jdbc:sqlserver://DESKTOP-7MF95U3:1433;databaseName=insurance-manage-systemV6";
//            String url = "jdbc:sqlserver://DESKTOP-7MF95U3:1433;databaseName=insurance-manage-systemV2";
////            

                                    /*======= Edit SQL config here ========
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      >>>>>>>>>>>>>  NAM     <<<<<<<<<<<<
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      ======= Edit SQL config here ========*/

//           String user = "sa";
//           String pass = "123";
//           String url = "jdbc:sqlserver://DESKTOP-GK6CSNF\\SQLEXPRESS:1433;databaseName=insurance-manage-systemV5";



                                    /*======= Edit SQL config here ========
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      >>>>>>>>>>>>>  THIỆN   <<<<<<<<<<<<
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      ======= Edit SQL config here ========*/
            
//            String user = "sa";
//             String pass = "123";
//            String url = "jdbc:sqlserver://localhost:1433;databaseName=insurance-manage-systemV10";



                                    /*======= Edit SQL config here ========
                                      >>>>>>>>>>>>>             <<<<<<<<<<<<
                                      >>>>>>>>>>>>>  TUẤN ANH   <<<<<<<<<<<<
                                      >>>>>>>>>>>>>             <<<<<<<<<<<<
                                      ======= Edit SQL config here ========*/
//            
//             String user = "sa";
//             String pass = "123";
//             String url = "jdbc:sqlserver://DESKTOP-2P00V52\\SQL2022:1433;databaseName=insurance-manage-systemV6";




                                    /*======= Edit SQL config here ========
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      >>>>>>>>>>>>>  MINH    <<<<<<<<<<<<
                                      >>>>>>>>>>>>>          <<<<<<<<<<<<
                                      ======= Edit SQL config here ========*/
            
//            String user = "sa";
//            String pass = "1234";
//            String url = "jdbc:sqlserver://localhost:1433;databaseName=insurance-manage-systemV6";


            
//            String url = "jdbc:sqlserver://DESKTOP-7MF95U3\\SQLEXPRESS:1433;databaseName=insurance-manage-systemV1";
//            String url = "jdbc:sqlserver://DESKTOP-2P00V52\\SQL2022:1433;databaseName=insuranceDB";
//            String url = "jdbc:sqlserver://DESKTOP-GK6CSNF\\SQLEXPRESS:1433;databaseName=insurance-manage-systemV1";


            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
