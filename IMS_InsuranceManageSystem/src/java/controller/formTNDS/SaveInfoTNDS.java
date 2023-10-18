/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.formTNDS;


import dao.FormTNDS;
import model.Form_TNDS;
import model.TNDS_Level;
import model.User;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.time.LocalDate;


/**
 *
 * @author Dell
 */
@WebServlet(name="SaveInfoTNDS", urlPatterns={"/saveInfoTNDS"})
public class SaveInfoTNDS extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveInfoTNDS</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaveInfoTNDS at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        FormTNDS dao = new FormTNDS();
       String type = request.getParameter("type");
        TNDS_Type type2 = dao.getType(Integer.parseInt(type));
       String soMay = request.getParameter("soMay");
       String bienXe = request.getParameter("bienXe");
       String soKhung = request.getParameter("soKhung");
       Date fromDate = Date.valueOf(request.getParameter("fromDate")) ;
       Date toDate = Date.valueOf(request.getParameter("toDate")) ;
       String lv_fee = request.getParameter("level");
       String tax_fee = request.getParameter("tax-fee");
       String num = request.getParameter("num");
       String total = request.getParameter("total");
        HttpSession session = request.getSession();
        User user1 = (User) session.getAttribute("user");
        
        String lv_fee_value = dao.getTNDS_LevelbyId(Integer.parseInt(lv_fee)).getLv_value();
        Form_TNDS obj = new Form_TNDS(type2.getType_name(),soMay,bienXe,soKhung, fromDate,toDate,lv_fee_value, num, total, user1.getUser_id(), "1", "UnChecked");
        dao.insertBill(obj);
        request.getRequestDispatcher("HandleBillFormTNDS").forward(request, response);
//        System.out.println(type);
//        PrintWriter out = response.getWriter();
//        out.print(type);
       
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
        processRequest(request, response);
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
