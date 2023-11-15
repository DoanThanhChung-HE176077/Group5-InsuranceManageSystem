/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.staff;

import dao.ContractDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Claims;
import model.ContractTNDS;
import model.ContractVatchat;
import model.NewC;
import model.User;

/**
 *
 * @author chun
 */
@WebServlet(name="StaffClaimDetail", urlPatterns={"/StaffClaimDetail"})
public class StaffClaimDetail extends HttpServlet {
   
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
            out.println("<title>Servlet StaffClaimDetail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StaffClaimDetail at " + request.getContextPath () + "</h1>");
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
        int claim_id = Integer.parseInt(request.getParameter("claim_id"));
        System.out.println("claim_id cua Staff claim list show:" + claim_id);
        // get calim by claim id
        ContractDAO ct = new  ContractDAO();
        UserDAO ud = new UserDAO();
        Claims cl = ct.getClaimById(claim_id);
        int contract_id = cl.getContract_id();
        System.out.println(contract_id);
        ArrayList<User> myu  = ud.getListUserFull();
        
        NewC contract = ct.getContractById(contract_id);
        ContractTNDS contractTNDS = ct.getTNDSbyId(contract_id);
        ContractVatchat contractVatchat = ct.getVatchatbyId(contract_id);
        request.setAttribute("user", myu);
        request.setAttribute("contract", contract);
        request.setAttribute("contractTNDS", contractTNDS);
        request.setAttribute("contractVatchat", contractVatchat);
        request.setAttribute("claim", cl);
        
        request.getRequestDispatcher("Staff_claim_detail.jsp").forward(request, response);
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
