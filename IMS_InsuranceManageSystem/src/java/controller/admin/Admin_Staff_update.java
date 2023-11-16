/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import static controller.admin.Admin_Staff_add.checkEmail;
import static controller.admin.Admin_Staff_add.checkFullname;
import static controller.admin.Admin_Staff_add.checkIdentityCardNumber;
import static controller.admin.Admin_Staff_add.checkPhoneNumber;
import static controller.admin.Admin_Staff_add.checkValidPassword;
import controller.home.Register;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author ADMIN
 */
public class Admin_Staff_update extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        UserDAO ud = new UserDAO();
//        response.setContentType("text/html;charset=UTF-8");
//        int id = Integer.parseInt(request.getParameter("id"));
//        String phoneNum = request.getParameter("input-phoneNum");
//        String mail = request.getParameter("input-mail");
//        String fullname = request.getParameter("input-fullname");
//        String dob = request.getParameter("input-dob");
//        String address = request.getParameter("input-address");
//        String iden = request.getParameter("input-iden");      
//        ud.updateStaff(fullname,mail,dob,address,phoneNum,iden,id);
//        response.sendRedirect("admin_Staff_list");
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
        UserDAO ud = new UserDAO();
        
        String id = request.getParameter("id");
        
        User detail = ud.dislayFullInfo(Integer.parseInt(id));

        request.setAttribute("detail", detail);
        
        
        request.getRequestDispatcher("Admin_Staff_update.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Map<String, String> errorMessages = new HashMap<>();
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        String phoneNum = request.getParameter("input-phoneNum");
        String mail = request.getParameter("input-mail");
        String dob = request.getParameter("input-dob");
        String address = request.getParameter("input-address");
        String iden = request.getParameter("input-iden");
        String fullname = request.getParameter("input-fullname");
//        String password = request.getParameter("input-password");
//        String repassword = request.getParameter("input-repassword");
        
        System.out.println(phoneNum);
        System.out.println(mail);
        System.out.println(dob);
        System.out.println(address);
        System.out.println(iden);
        System.out.println(fullname);
//        System.out.println(password);
//        System.out.println(repassword);
        

        if (!checkFullname(fullname).isEmpty()) {
            errorMessages.put("input-fullname", checkFullname(fullname));
        }
        if (!checkPhoneNumber(phoneNum).isEmpty()) {
            errorMessages.put("input-phoneNum", checkPhoneNumber(phoneNum));
        }
        if (!checkEmail(mail).isEmpty()) {
            errorMessages.put("input-mail", checkEmail(mail));
        }
        if (!checkIdentityCardNumber(iden).isEmpty()) {
            errorMessages.put("input-iden", checkIdentityCardNumber(iden));
        }
//        if (!checkValidPassword(password).isEmpty()) {
//            errorMessages.put("input-password", checkValidPassword(password));
//        }
//        if (password == null ? repassword != null : !password.equals(repassword)) {
//            errorMessages.put("input-password", (password == null || !password.equals(repassword)) ? "Nhập lại mật khẩu sai" : null);
//        }

        if (!errorMessages.isEmpty()) {
            request.setAttribute("errorMessages", errorMessages);
            doGet(request, response);
        } else {
            //input date
            SimpleDateFormat inputDateFormat = new SimpleDateFormat("dd/MM/yyyy");
            
            
            // Tạo một đối tượng SimpleDateFormat
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

            java.util.Date dateOfBirth = null;
            try {
                //parse input date
                java.util.Date parsedDate = inputDateFormat.parse(dob);
                
                //output date format trong SQL
                 SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                 
                 String formattedDate = outputDateFormat.format(parsedDate);
                
                // Parse chuỗi thành một đối tượng Date
                dateOfBirth = outputDateFormat.parse(formattedDate);

            } catch (ParseException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println(dateOfBirth);
            User u = new User();
            UserDAO uD = new UserDAO();
            uD.updateStaff(fullname,mail,dob,address,phoneNum,iden,id);
            response.sendRedirect("admin_Staff_list");
        

            
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
