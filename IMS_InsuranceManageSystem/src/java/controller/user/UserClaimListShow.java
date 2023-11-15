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
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Claims;
import model.Contract;
import model.User;

/**
 *
 * @author chun
 */
public class UserClaimListShow extends HttpServlet {
   
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
            out.println("<title>Servlet UserClaimListShow</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserClaimListShow at " + request.getContextPath () + "</h1>");
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
        //laays ra danh all hop dong da duoc duyet
        HttpSession session = request.getSession();
        User user1 = (User) session.getAttribute("user");

        ContractDAO dao = new ContractDAO();
        ArrayList<Claims> cl = dao.getAllClaimByUserId(user1.getUser_id());
        ArrayList<Contract> ct = dao.getAllContractOfUserThatActive(user1.getUser_id());
        ArrayList<Contract> ct2 = dao.getContractOption(user1.getUser_id());
        ArrayList<Claims> listclaim = dao.getListCalimKhacPending();
        String name = user1.getUser_fullName();
        
        request.setAttribute("username", name);
        request.setAttribute("listclaim", listclaim);
        request.setAttribute("ct", ct);
        request.setAttribute("cl", cl);
        request.setAttribute("ct2", ct2);
        request.getRequestDispatcher("User_claim_list.jsp").forward(request, response);
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
        int claim_id = Integer.parseInt(request.getParameter("claim_id"));
        System.out.println(claim_id);
        
        ContractDAO cdao = new ContractDAO();
        cdao.deleteClaimByClaimID(claim_id);
        response.sendRedirect("/IMS_InsuranceManageSystem/UserClaimListShow");
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
