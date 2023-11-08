/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.formTNDS;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author chun
 */
public class SaveInfoVatChat extends HttpServlet {
   
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
            out.println("<title>Servlet SavreInfoVatChat</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SavreInfoVatChat at " + request.getContextPath () + "</h1>");
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
        
//======= Receive data input from vatchat form =========

        String brand_id = request.getParameter("send-brand_id");
        String model_id = request.getParameter("send-model_id");
        String pt_id = request.getParameter("send-pt_id1");
        String deuct_id = request.getParameter("send-deduc_id1");        
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String fvc_totalPrice = request.getParameter("send-fvc_totalPrice");
        String soMay = request.getParameter("soMay"); //Device number
        String soKhung = request.getParameter("soKhung"); //Device chassis number
        String bienXe = request.getParameter("bienXe"); //License plates
        
        HttpSession session = request.getSession();
        User user1 = (User) session.getAttribute("user");
        int user_id = user1.getUser_id(); // user_id
        
        String amountsString = fvc_totalPrice;
        int amount = removeDotsFromNumber(amountsString);
        //======== Check receive data ==============
        System.out.println("======== Check vatchat receive data ==============");
        System.out.println("brand_id: " + brand_id);
        System.out.println("model_id: " + model_id);
        System.out.println("pt_id: " + pt_id);
        System.out.println("deuct_id: " + deuct_id);
        System.out.println("startDate: " + startDate);
        System.out.println("endDate: " + endDate);
        System.out.println("fvc_totalPrice: " + fvc_totalPrice);
        System.out.println("soMay: " + soMay);
        System.out.println("soKhung: " + soKhung);
        System.out.println("bienXe: " + bienXe);
        System.out.println("user_id: " + user_id);
        System.out.println(amount);


      
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static int removeDotsFromNumber(String numberWithDots) {
        // Remove all dots and then parse the string as an integer
        String withoutDots = numberWithDots.replaceAll("\\.", "");
        try {
            return Integer.parseInt(withoutDots);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

}



