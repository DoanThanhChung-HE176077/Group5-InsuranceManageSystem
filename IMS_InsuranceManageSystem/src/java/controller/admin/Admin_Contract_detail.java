/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.ContractDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ContractTNDS;
import model.ContractVatchat;

/**
 *
 * @author ADMIN
 */
public class Admin_Contract_detail extends HttpServlet {
   
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
        int id = Integer.parseInt(request.getParameter("contract_id"));
        String name = request.getParameter("ip_name");
        if(name.equals("Bảo hiểm TNDS")){
            ContractDAO  c = new ContractDAO();
            ContractTNDS contract = c.getTNDSbyId(id);
            request.setAttribute("contract", contract);
            request.getRequestDispatcher("Admin_Contract_detail.jsp").forward(request, response);
        }
        else if(name.equals("Bảo hiểm vật chất")) {
            ContractDAO  c = new ContractDAO();
            ContractVatchat contract = c.getVatchatbyId(id);
            request.setAttribute("contract", contract);
            request.getRequestDispatcher("Admin_Contract_detail.jsp").forward(request, response);
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
        processRequest(request, response);
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
//Vatchat: ten khach hang, ma hop dong, ten hop dong, hang xe, hieu xe, so may, bien kiem soat, so khung, ngay bd, ngay kt, goi bao hiem co ban, muc khau tru, tong chi phi , trang thai

//TNDS: ten khach hang, ma hop dong, ten hop dong, loai xe, so may, bien xe, so khung, ngay bd, ngay kt, muc trach nhiem, so nguoi, tong chi phi, trang thai