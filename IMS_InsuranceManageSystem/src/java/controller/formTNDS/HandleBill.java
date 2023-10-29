/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.formTNDS;

import dao.FormDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Form_TNDS;
import model.User;

/**
 *
 * @author chun
 */
@WebServlet(name="HandleBill", urlPatterns={"/HandleBill"})
public class HandleBill extends HttpServlet {
   
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
            out.println("<title>Servlet HandleBill</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HandleBill at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

      //loai bo 2 so 0 cuoi cung trc khi gan cho amount 
    public static String remove2LastZeros(String input) {
        if (input == null || input.isEmpty()) {
            return input;
        }
        int length = input.length();
        int endIndex = length;
        for (int i = length - 1; i >= 0; i--) {
            if (input.charAt(i) != '0') {
                break;
            }
            endIndex = i;
        }
        if (endIndex == length) {
            // Không có số 0 nào ở cuối cùng
            return input;
        } else {
            return input.substring(0, endIndex);
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
//        FormDAO dao = new FormDAO();
//        Form_TNDS obj = dao.getForm_TNDS();
//        HttpSession session = request.getSession();
//
//        User user12 = (User) session.getAttribute("user");
//        System.out.println(obj.getId());
//        System.out.println(user12);
//        request.setAttribute("obj", obj);
//        request.setAttribute("user", user12);
//
//        request.getRequestDispatcher("BillOfInsuranceTNDS.jsp").forward(request, response);
        
//=====================sau khi thanh toan thanh cong ===============
//==============bill in4 cho vat chat===============
        
        HttpSession session = request.getSession();
        User getUser = (User) session.getAttribute("user");

        String bill_code = ""; //#L22AA9QB
        String bill_total = "";
        String bill_ip_id = request.getParameter("ip_id");
        String bill_user = getUser.getUser_fullName();
        String bill_content = "Thanh toán thành công.";
        String bill_creationDate = request.getParameter("bill_creationDate");
        //hh:mm:ss dd-mm-yyyy
        
        
        if(bill_ip_id.equals("2")){
            //go to vat chat
            bill_code = request.getParameter("vnp_OrderInfo");
            bill_total = remove2LastZeros(request.getParameter("vnp_Amount"));//loai bo 2 so 0 cuoi cung trc khi gan cho amount 
            
            //save bill vào db
            
            //send data to bill.jsp
            request.getRequestDispatcher("BillVatChat.jsp").forward(request, response);
        }else if(bill_ip_id.equals("1")) {
            //go to tnds
            
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
