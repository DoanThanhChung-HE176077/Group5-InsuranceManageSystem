/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.home;

import Dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import Model.User;

/**
 *
 * @author thant
 */
public class register extends HttpServlet {
   
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
            out.println("<title>Servlet register</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath () + "</h1>");
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
        request.getRequestDispatcher("Register.jsp").forward(request, response);
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
        String phoneNum = request.getParameter("input-phoneNum");
        String mail = request.getParameter("input-mail");
        String dob = request.getParameter("input-dob");
        String address = request.getParameter("input-address");
        String iden = request.getParameter("input-iden");
        String fullname = request.getParameter("input-fullname");
        String password = request.getParameter("input-password");
        String repassword = request.getParameter("input-repassword");
        
        System.out.println(password);
        System.out.println(repassword);
        System.out.println(password);
        
        if (checkValidUsername(fullname) != "") {
            request.setAttribute("msg", checkValidUsername(fullname));
            doGet(request, response);
        } else if (checkPhoneNumber(phoneNum) == "Số điện thoại không hợp lệ") {
            request.setAttribute("msg", "Số điện thoại không hợp lệ");
            doGet(request, response);

        } else if (checkEmail(mail) == "Email không hợp lệ") {
            request.setAttribute("msg", "Email không hợp lệ");
            doGet(request, response);

        } else if (checkIdentityCardNumber(iden) == "Số căn cước công dân không hợp lệ") {
            request.setAttribute("msg", "Số căn cước công dân không hợp lệ");
            doGet(request, response);

        } else if (password == null ? repassword != null : !password.equals(repassword)) {
            request.setAttribute("msg", "nhập lại mật khẩu sai");
            doGet(request, response);
        } else {
            // Tạo một đối tượng SimpleDateFormat
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

            Date dateofbirth = null;
            try {
                // Parse chuỗi thành một đối tượng Date
                dateofbirth = dateFormat.parse(dob);
            } catch (ParseException ex) {
                Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
            }

            User u = new User();
            UserDAO uD = new UserDAO();

            uD.addUser(fullname, mail, password, dateofbirth, address, phoneNum, iden);

            response.sendRedirect("login");
        }
        
        
        
        
    }
    
    
    public static String checkValidUsername(String username) {
        // Kiểm tra độ dài của tên người dùng
        if (username.length() < 2 || username.length() > 64) {
            return "Nhập tên dài 2 - 64 ký tự";
        }

        String regex = "^[a-zA-Z]+$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(username);

        if (!matcher.matches())
            return "Tên sai định dạng";

        return "";
    }
    
    public static String checkPhoneNumber(String phoneNumber) {
        String regex = "^0\\d{9}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(phoneNumber);
        if (matcher.matches()) {
            return null;
        } else {
            return "Số điện thoại không hợp lệ";
        }
    }

    public static String checkEmail(String email) {
        String regex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z]+$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        if (matcher.matches()) {
            return null;
        } else {
            return "Email không hợp lệ";
        }
    }

    public static String checkIdentityCardNumber(String identityCardNumber) {
        String regex = "^[0-9]{12}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(identityCardNumber);
        if (matcher.matches()) {
            return null;
        } else {
            return "Số căn cước công dân không hợp lệ";
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
