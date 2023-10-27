/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.formTNDS;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author chun
 */
public class SaveInfoVatChat extends HttpServlet {
   
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
            out.println("<title>Servlet SavreInfoVatChat</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SavreInfoVatChat at " + request.getContextPath () + "</h1>");
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
        
        //======= Receive data input from vatchat form =========
        String motorBrands = request.getParameter("motorBrands");
        String hieuXe = request.getParameter("motorBrandModel");
        String soMay = request.getParameter("soMay");
        String soKhung = request.getParameter("soKhung");
        String bienXe = request.getParameter("bienXe");
        String ngayBatDau = request.getParameter("fromDate");
        String ngayKetThuc = request.getParameter("toDate");
        String goibaoHiemCoBan = request.getParameter("pack_percent");
        String mucKhauTru = request.getParameter("deduc_percent");
        String giaTriXe = request.getParameter("motorModel-price");
        String tongSoTien = request.getParameter("total");
        
        //======== Check receive data ==============
        System.out.println("======== Check vatchat receive data ==============");
        System.out.println("motorBrands: " + motorBrands);
        System.out.println("hieuXe: " + hieuXe);
        System.out.println("soMay: " + soMay);
        System.out.println("soKhung: " + soKhung);
        System.out.println("bienXe: " + bienXe);
        System.out.println("ngayBatDau: " + ngayBatDau);
        System.out.println("ngayKetThuc: " + ngayKetThuc);
        System.out.println("goibaoHiemCoBan: " + goibaoHiemCoBan);
        System.out.println("mucKhauTru: " + mucKhauTru);
        System.out.println("giaTriXe: " + giaTriXe);
        System.out.println("tongSoTien: " + tongSoTien);

      
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



