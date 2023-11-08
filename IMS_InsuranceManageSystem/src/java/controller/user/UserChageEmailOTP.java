/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author chun
 */
@WebServlet(name="UserChangeEmailOTP", urlPatterns={"/UserChangeEmailOTP"})
public class UserChageEmailOTP extends HttpServlet {
   
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
            out.println("<title>Servlet UserChageEmailOTP</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserChageEmailOTP at " + request.getContextPath () + "</h1>");
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
        
        HttpSession sessionOTP = request.getSession();
        String otp = (String) sessionOTP.getAttribute("otp");
        // OTP session exists, check if the user-provided OTP matches
        String userOTP = request.getParameter("enterOTP");
        System.out.println(userOTP);
        
        if (userOTP != null && userOTP.equals(otp)) {
            // User provided correct OTP
            // Display a success notification modal
            request.setAttribute("successMessage", "Thay đổi email thành công.");

            // Redirect the user to the home page
            response.sendRedirect("/IMS_InsuranceManageSystem/UserProfile.jsp");

            // Delete the OTP session
            sessionOTP.removeAttribute("otp");
            // update user email function();
            UserDAO udao = new UserDAO();
            String newMail = request.getParameter("newMail");
            System.out.println(newMail);
            HttpSession session = request.getSession();
            User user1 = (User) session.getAttribute("user");
            udao.updateMailUser(newMail, user1.getUser_id());

        } else {
            // User provided incorrect OTP
            // Handle this case, you can display an error message or 
            
        }
        
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
