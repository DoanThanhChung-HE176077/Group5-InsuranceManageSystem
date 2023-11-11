/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import dao.ContractDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ContractTNDS;
import model.ContractVatchat;
import model.User;

/**
 *
 * @author thant
 */
public class UserContractDetail extends HttpServlet {
   
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
            out.println("<title>Servlet UserContractDetail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserContractDetail at " + request.getContextPath () + "</h1>");
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
        int cid = Integer.parseInt(request.getParameter("cid"));
        int ip_id = Integer.parseInt(request.getParameter("ip_id"));
        
        if (ip_id == 1) {
            ContractDAO  c = new ContractDAO();
            ContractTNDS contract = c.getTNDSbyId(cid);
            
            User userContract = c.getUserInfoByName(contract.getFullname());
            
            request.setAttribute("contract", contract);
            request.setAttribute("userContract", userContract);
            request.getRequestDispatcher("Contract_detail.jsp").forward(request, response);
        } else if(ip_id == 2) {
            ContractDAO  c = new ContractDAO();
            ContractVatchat contract = c.getVatchatbyId(cid);
            //user info
            User userContract = c.getUserInfoByName(contract.getFullname());
            request.setAttribute("contract", contract);
            request.setAttribute("userContract", userContract);
            
            //model price info
            int modelPrice = c.getModelPrice(contract.getHieuxe(), contract.getHangxe());
            request.setAttribute("modelPrice", modelPrice);
            
            request.getRequestDispatcher("Contract_detail2.jsp").forward(request, response);
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
