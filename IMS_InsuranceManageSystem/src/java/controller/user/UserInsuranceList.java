/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import dao.ContractDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Contract;
import model.NewC;
import model.User;

/**
 *
 * @author thant
 */
public class UserInsuranceList extends HttpServlet {
   
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
            out.println("<title>Servlet UserInsuranceList</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserInsuranceList at " + request.getContextPath () + "</h1>");
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
        
        String status = request.getParameter("status");
        
        User u = new User();
        
        HttpSession session = request.getSession();
        u = (User) session.getAttribute("user");
        System.out.println("UserInsuranceList.java check userID: "+ u.getUser_id());
        
        ContractDAO cd = new ContractDAO();
        
        NewC nC = new NewC();
        
        if (status.equals("active")) {
            ArrayList<NewC> cL = cd.getActiveContractOfUser(u.getUser_id());
            request.setAttribute("contractList", cL);
        } else if (status.equals("expired")) {
            ArrayList<NewC> cL = cd.getExpiredContractOfUser(u.getUser_id());
            request.setAttribute("contractList", cL);
        } else if (status.equals("pending")) {
            ArrayList<NewC> cL = cd.getPendingContractOfUser(u.getUser_id());
            request.setAttribute("contractList", cL);
        }
        request.getRequestDispatcher("User_inslist.jsp").forward(request, response);
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
        User u = new User();
        
        HttpSession session = request.getSession();
        u = (User) session.getAttribute("user");
        System.out.println("user insurance list check userID: "+ u.getUser_id());
        
        ContractDAO cd = new ContractDAO();
        
        NewC nC = new NewC();
        
        ArrayList<NewC> cL = cd.getAllContractOfUser(u.getUser_id());
        
        request.setAttribute("contractList", cL);
        
        request.getRequestDispatcher("User_inslist.jsp").forward(request, response);
        
        
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
