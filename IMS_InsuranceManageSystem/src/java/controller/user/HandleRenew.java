/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import dao.FormDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import model.Form_TNDS;

/**
 *
 * @author Dell
 */
@WebServlet(name="HandleRenew", urlPatterns={"/HandleRenew"})
public class HandleRenew extends HttpServlet {
   
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
            out.println("<title>Servlet HandleRenew</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HandleRenew at " + request.getContextPath () + "</h1>");
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
          int ip_id = Integer.parseInt(request.getParameter("ip_id")) ;
          int f_id =Integer.parseInt(request.getParameter("f_id"));
          int cid = Integer.parseInt(request.getParameter("cid"));
          System.out.println(ip_id + " " +f_id);
          Date startDate = Date.valueOf(request.getParameter("fromDate"));
          Date endDate = Date.valueOf(request.getParameter("toDate"));
           String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");
        if(vnp_ResponseCode.equals("00")){
          if(ip_id == 1){
                 FormDAO dao = new FormDAO();
                 Form_TNDS obj = dao.getForm_TNDSById(f_id);
              dao.fixContract(cid,startDate,endDate);
                dao.fixTnds(f_id,startDate,endDate);
          }
          if(ip_id == 2){
              System.out.println(startDate+" "+ startDate);
                 FormDAO dao = new FormDAO();
                 Form_TNDS obj = dao.getForm_TNDSById(f_id);
              dao.fixContract(cid,startDate,endDate);
                dao.fixVatChat(f_id,startDate,endDate);
          }
          request.getRequestDispatcher("UserInsuranceList?status=pending").forward(request, response);
    } else{
            request.getRequestDispatcher("listInsuranceProduct").forward(request, response);
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
