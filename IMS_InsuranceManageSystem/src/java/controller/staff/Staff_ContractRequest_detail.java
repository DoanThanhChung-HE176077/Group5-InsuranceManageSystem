/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.staff;

import dao.ContractDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ContractTNDS;
import model.ContractVatchat;
import model.NewC;


/**
 *
 * @author pc minh
 */
public class Staff_ContractRequest_detail extends HttpServlet {
   
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
            out.println("<title>Servlet Staff_ContractRequest_detail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Staff_ContractRequest_detail at " + request.getContextPath () + "</h1>");
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
        //processRequest(request, response);
        int contract_id = Integer.parseInt(request.getParameter("contract_id"));
        System.out.println(contract_id);
        ContractDAO cd = new ContractDAO();
        NewC contract = cd.getContractById(contract_id);
        ContractTNDS contractTNDS = cd.getTNDSbyId(contract_id);
        ContractVatchat contractVatchat = cd.getVatchatbyId(contract_id);
        
        request.setAttribute("contract", contract);
        request.setAttribute("contractTNDS", contractTNDS);
        request.setAttribute("contractVatchat", contractVatchat);
        request.getRequestDispatcher("Staff_ContractRequest_detail.jsp").forward(request, response);
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
        //processRequest(request, response);
        
//        ĐÃ CHUYỂN QUA DOGET CỦA StaffContractRequestCheck.java

//        int contractID = Integer.parseInt(request.getParameter("contract_id"));
//        String contractStatus = request.getParameter("status");
//        
//        ContractDAO cd = new ContractDAO();
//        if(cd.updateContractStatus(contractID, contractStatus)){
//            System.out.println("Update to db successful!");
//        }
//        else{
//            System.out.println("Update to db failed!");
//        }
//        response.sendRedirect("contract_request_list");
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
