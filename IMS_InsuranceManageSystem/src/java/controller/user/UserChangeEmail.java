/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import controller.home.Reset_pass;
import dao.UserDAO;
import jakarta.mail.MessagingException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.logging.Logger;
import static model.SendVerifyCodeMail.sendMail;

/**
 *
 * @author chun
 */
@WebServlet(name = "UserChangeEmail", urlPatterns = {"/UserChangeEmail"})
public class UserChangeEmail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserChangeEmail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserChangeEmail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //lấy otp trên session để kiểm tra có null hay không
        HttpSession sessionOTP = request.getSession();
        String otp = (String) sessionOTP.getAttribute("otp");

        //kiểm tra mail đã tồn tại trong hệ thống chưa
        String newMail = request.getParameter("newMail");
        UserDAO udao = new UserDAO();
        //mail chưa tồn tại
        if(udao.checkEmailExist(newMail) == false){
            //neu otp session ma rong
            if(otp == null || otp.isEmpty()){
                // tạo otp mới
                String verifyCode = generateVerifyCode();
                try {
                    sendMail(verifyCode, newMail);
                    //Lưu OTP vào session để check ở web otp
                    sessionOTP.setAttribute("otp", verifyCode);
                    request.setAttribute("newMail", newMail);
                    request.getRequestDispatcher("User_Mail_OTP.jsp").forward(request, response);
                }catch (MessagingException e) {
                    // Handle email sending error
                    e.printStackTrace();
                }
            } else {
                System.out.println("========OTP EMAIL==========");
                System.out.println("otp dang ko rong, can xoa");
                sessionOTP.removeAttribute("otp");
                // tạo otp mới
                String verifyCode2 = generateVerifyCode();
                try {
                    sendMail(verifyCode2, newMail);
                    //Lưu OTP vào session để check ở web otp
                    sessionOTP.setAttribute("otp", verifyCode2);
                    request.setAttribute("newMail", newMail);
                    request.getRequestDispatcher("User_Mail_OTP.jsp").forward(request, response);
                } catch (MessagingException e) {
                    // Handle email sending error
                    e.printStackTrace();
                }
            }
            //mail đã tồn tại
        }else {
            //nếu mail tồn tại, tạo thông báo: Email đã tồn tại trong hệ thống
            //gửi thông báo và chuyển gnười dùng về trang : User_Change_mail.jsp
            String errorMessage = "Email đã tồn tại trong hệ thống.";
            request.setAttribute("errorMessage", errorMessage);

            // Forward the user to the User_Change_mail.jsp page
            request.getRequestDispatcher("User_Change_Mail.jsp").forward(request, response);
        }
    }


    public String generateVerifyCode() {
        // Tạo mã xác minh ngẫu nhiên
        int verifyCode = (int) (Math.random() * 999999 + 1);
        // Đảm bảo rằng mã xác minh có 6 chữ số
        String verifyCodeString = String.format("%06d", verifyCode);
        return verifyCodeString;
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
