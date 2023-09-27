/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.admin;

import Dao.IPDAO;
import Model.InsuranceProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class admin_IP_detail extends HttpServlet {
   
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
        int id = Integer.parseInt(request.getParameter("id")) ;    
        
        IPDAO  ip = new IPDAO();
        InsuranceProduct detail = ip.getIPbyID(id);
//        request.setAttribute("admin_IP_detail", detail);
//        request.getRequestDispatcher("admin_IP_list.jsp").forward(request, response);
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.print("                                    <div class=\"modal fade\" id=\"my-modal-detail\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabe2\"\n" +
"                                 aria-hidden=\"true\">\n" +
"                                <div class=\"modal-dialog\">\n" +
"                                    <div class=\"modal-content\">\n" +
"                                         modal header \n" +
"                                        <form action=\"admin_IP_detail\" method=\"get\">\n" +
"                                        <div class=\"modal-header\">\n" +
"                                            <h5 class=\"modal-title\" id=\"exampleModalLabel\">Detail Insurance Product</h5>\n" +
"                                            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\"\n" +
"                                                    aria-label=\"Close\"></button>\n" +
"                                        </div>\n" +
"                                         modal body \n" +
"                                        <div class=\"modal-body\">\n" +
"                                            \n" +
"                                                <div class=\"mb-3\">\n" +
"                                                    <label for=\"recipient-name\" class=\"col-form-label\">ID:</label>\n" +
"                                                    <input type=\"text\" class=\"form-control\" id=\"recipient-name\" name=\"id\" value=\""+detail.getIp_id()+"\">\n" +
"                                                </div>\n" +
"                                                <div class=\"mb-3\">\n" +
"                                                    <label for=\"message-text\" class=\"col-form-label\">Type:</label>\n" +
"                                                    <textarea class=\"form-control\" id=\"message-text\" name=\"type\" required=\""+detail.getIp_type()+"\"></textarea>\n" +
"                                                </div>\n" +
"                                            <div class=\"mb-3\">\n" +
"                                                    <label for=\"message-text\" class=\"col-form-label\">Name:</label>\n" +
"                                                    <textarea class=\"form-control\" id=\"message-text\" name=\"name\" required=\""+detail.getIp_name()+"\"></textarea>\n" +
"                                                </div>\n" +
"                                            \n" +
"                                        </div>\n" +
"                                        <div class=\"modal-footer\">\n" +
"                                            <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\n" +
"                                            \n" +
"                                        </div>\n" +
"                                        </form>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </div>");
            
        
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
