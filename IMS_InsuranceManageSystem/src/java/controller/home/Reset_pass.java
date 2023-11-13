package controller.home;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import dao.UserDAO;
import static model.SendVerifyCodeMail.sendMail;
import jakarta.mail.MessagingException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thant
 */
public class Reset_pass extends HttpServlet {
   
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
            out.println("<title>Servlet reset_pass</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet reset_pass at " + request.getContextPath () + "</h1>");
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
        request.getRequestDispatcher("ResetPass.jsp").forward(request, response);
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
        String otpSend = request.getParameter("otpSend-input");
        String inputLogin = request.getParameter("input-login");
        
        if (otpSend != "") {
            String otpRiu = request.getParameter("otpRiu");
            
            
            request.setAttribute("otpSend", "1");
            String inputOtp = request.getParameter("input-otp");
            
            
            if (!inputOtp.equals(otpRiu)) {
                request.setAttribute("msg", "Sai OTP");
                request.getRequestDispatcher("ResetPass.jsp").forward(request, response);
            } else {
                request.setAttribute("inputLogin", inputLogin);
                request.getRequestDispatcher("ChangeForgetPass.jsp").forward(request, response);
            }
            
            
            //
            
        } else {
            
            UserDAO uD = new UserDAO();
            if (!uD.checkLoginInfo(inputLogin)) {
                request.setAttribute("msg", "Thông tin đăng nhập không đúng");
                request.getRequestDispatcher("ResetPass.jsp").forward(request, response);
            } else {
                request.setAttribute("inputLogin", inputLogin);
                String verifyCode = generateVerifyCode();
                request.setAttribute("otpSend", "1");
                request.setAttribute("msg", "OTP đã gửi");

                request.setAttribute("otpRiu", verifyCode);


                try {
                    //verify code
//                    sendMail(verifyCode, "namchik03@gmail.com");
                    sendMail(verifyCode, inputLogin);
                } catch (MessagingException ex) {
                    Logger.getLogger(Reset_pass.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.getRequestDispatcher("ResetPass.jsp").forward(request, response);
            }
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
