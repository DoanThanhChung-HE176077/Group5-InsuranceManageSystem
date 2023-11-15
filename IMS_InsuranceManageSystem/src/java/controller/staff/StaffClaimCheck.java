/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.staff;

import dao.ContractDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Contract;

/**
 *
 * @author chun
 */
@WebServlet(name="StaffClaimCheck", urlPatterns={"/StaffClaimCheck"})
public class StaffClaimCheck extends HttpServlet {
   
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
            out.println("<title>Servlet StaffClaimCheck</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StaffClaimCheck at " + request.getContextPath () + "</h1>");
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
        String claim_id = request.getParameter("claim_id");
        String check = request.getParameter("check");
        ContractDAO ctdao = new ContractDAO();
        Contract ct = new Contract();
        
        
        
        if(!check.equals("")){
            System.out.println("check :" + check);
        }else {
            System.out.println("check null");
        }
        //update claim status + send mail cho user by user_id + update endDate contract_endDate + set contract_status = Exprised
        if(check.equals("reject")){
            ctdao.updateCliamNO( claim_id);
            //get 1 contract by claim id
            ct = ctdao.getOneContractThatMatchClaim(Integer.parseInt(claim_id));
            int contrac_id2 = ct.getContract_id();
            ctdao.updateCliamNO(claim_id);
            response.sendRedirect("/IMS_InsuranceManageSystem/StaffClaimListShow");
        }else if(check.equals("accept")){
            ctdao.updateCliamYES( claim_id);
            ct = ctdao.getOneContractThatMatchClaim(Integer.parseInt(claim_id));
            int contrac_id2 = ct.getContract_id();
            ctdao.updateCliamYES(claim_id);
            ctdao.updateEndDateAndContractStatus("Expired",contrac_id2);
            response.sendRedirect("/IMS_InsuranceManageSystem/StaffClaimListShow");
        }
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
