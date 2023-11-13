/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.IPDAO;
import dao.UserDAO;
import model.InsuranceProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import model.User;

/**
 *
 * @author ADMIN
 */
public class Admin_IP_detail extends HttpServlet {
   
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
        // Đọc dữ liệu JSON từ yêu cầu
//        BufferedReader reader = request.getReader();
//        StringBuilder jsonBuilder = new StringBuilder();
//        String line;
//        while ((line = reader.readLine()) != null) {
//            jsonBuilder.append(line);
//        }
//        
//        IPDAO dao = new IPDAO();
//        InsuranceProduct ip = dao.getIPbyID(Integer.parseInt(jsonBuilder.toString()));
//       response.setContentType("application/json");
//        PrintWriter out = response.getWriter();
//       out.println("{\"IP\": \"" + ip.getIp_id() + "\", "
//               + "\"Type\": \"" + ip.getIp_type() + "\", \"Name\": \"" 
//               + ip.getIp_name() );
//    
        int id = Integer.parseInt(request.getParameter("ip_id"));
        IPDAO  ip = new IPDAO();
        int income1 = ip.getIncomeTNDS();
        int income2 = ip.getIncomeVatchat();
        InsuranceProduct detail = ip.getIPbyID(id);
        request.setAttribute("detail", detail);
        request.setAttribute("income1", income1);
        request.setAttribute("income2", income2);
        request.getRequestDispatcher("Admin_IP_detail.jsp").forward(request, response);
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
