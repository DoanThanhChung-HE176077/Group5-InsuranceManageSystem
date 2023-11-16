/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.home;

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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.User;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import static model.SendVerifyCodeMail.sendMail;

/**
 *
 * @author thant
 */
public class Register extends HttpServlet {
   
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
        
        Map<String, String> errorMessages = new HashMap<>();
        
        String phoneNum = request.getParameter("input-phoneNum");
        String mail = request.getParameter("input-mail");
        String dob = request.getParameter("input-dob");
        String address = request.getParameter("input-address");
        String iden = request.getParameter("input-iden");
        String fullname = request.getParameter("input-fullname");
        String password = request.getParameter("input-password");
        String repassword = request.getParameter("input-repassword");
        
        
        HttpSession session=request.getSession();
        
//        String sysOtp = (String) session.getAttribute("sysOtp");
        
        System.out.println(phoneNum);
        System.out.println(mail);
        System.out.println(dob);
        System.out.println(address);
        System.out.println(iden);
        System.out.println(fullname);
        System.out.println(password);
        System.out.println(repassword);
        

        if (!checkFullname(fullname).isEmpty()) {
            errorMessages.put("input-fullname", checkFullname(fullname));
        }
        if (!checkPhoneNumber(phoneNum).isEmpty()) {
            errorMessages.put("input-phoneNum", checkPhoneNumber(phoneNum));
        }
        if (!checkEmail(mail).isEmpty()) {
            errorMessages.put("input-mail", checkEmail(mail));
        }
        if (!checkIdentityCardNumber(iden).isEmpty()) {
            errorMessages.put("input-iden", checkIdentityCardNumber(iden));
        }
        if (!checkValidPassword(password).isEmpty()) {
            errorMessages.put("input-password", checkValidPassword(password));
        }
        if (password == null ? repassword != null : !password.equals(repassword)) {
            errorMessages.put("input-password", (password == null || !password.equals(repassword)) ? "Nhập lại mật khẩu sai" : null);
        }
        

        if (!errorMessages.isEmpty()) {
            request.setAttribute("errorMessages", errorMessages);
            doGet(request, response);
        } else if ((String) session.getAttribute("sysOtp") == null) {
            
            String otp = generateVerifyCode();

            try {
                //verify code
//                sendMail(otp, "namchik03@gmail.com");
                sendMail(otp, mail);
            } catch (MessagingException ex) {
                Logger.getLogger(Reset_pass.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            //set otp
//            request.setAttribute("sysOtp", otp);
        
            session.setAttribute("sysOtp", otp);
            
            String sysOtp = (String) session.getAttribute("sysOtp");
            System.out.println("sysOtp: " + sysOtp);
            
            //set input again
            request.setAttribute("phoneNum", phoneNum);
            request.setAttribute("mail", mail);
            request.setAttribute("fullname", fullname);
            request.setAttribute("dob", dob);
            request.setAttribute("address", address);
            request.setAttribute("iden", iden);
            request.setAttribute("pass", password);
            request.setAttribute("repass", repassword);
            
            request.setAttribute("otpStatus", "1");
            
            
            doGet(request, response);
            
            
        } else {  
            
            String inputOtp = request.getParameter("input-otp");
            String sysOtp = (String) session.getAttribute("sysOtp");
            
            if (!inputOtp.equals(sysOtp) || inputOtp==null) {
                errorMessages.put("input-otp", "Sai OTP");
                System.out.println("loi regis otp: " + inputOtp);
                request.setAttribute("errorMessages", errorMessages);

                //set input again
                request.setAttribute("phoneNum", phoneNum);
                request.setAttribute("mail", mail);
                request.setAttribute("fullname", fullname);
                request.setAttribute("dob", dob);
                request.setAttribute("address", address);
                request.setAttribute("iden", iden);
                request.setAttribute("pass", password);
                request.setAttribute("repass", repassword);
                
                request.setAttribute("otpStatus", "1");

                doGet(request, response);
            }
            
            
            //input date
            SimpleDateFormat inputDateFormat = new SimpleDateFormat("dd/MM/yyyy");
            

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

            Date dateOfBirth = null;
            try {
                //parse input date
                Date parsedDate = inputDateFormat.parse(dob);
                
                //output date format trong SQL
                 SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                 
                 String formattedDate = outputDateFormat.format(parsedDate);
                
                // Parse chuỗi thành một đối tượng Date
                dateOfBirth = outputDateFormat.parse(formattedDate);

            } catch (ParseException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }

            User u = new User();
            UserDAO uD = new UserDAO();

            String status = "Unverified";
            uD.addUser(fullname, mail, password, dateOfBirth, address, phoneNum, iden, status);

            response.sendRedirect("login");
        }
        
        
        
        
    }
    
    
    public String generateVerifyCode() {
        // Tạo mã xác minh ngẫu nhiên
        int verifyCode = (int) (Math.random() * 999999 + 1);

        // Đảm bảo rằng mã xác minh có 6 chữ số
        String verifyCodeString = String.format("%06d", verifyCode);

        return verifyCodeString;
    }
    
    public static String checkFullname(String username) {
        // Kiểm tra độ dài của tên người dùng
        if (username.length() < 2 || username.length() > 64) {
            return "Nhập tên dài 2 - 64 ký tự";
        }

        // Kiểm tra định dạng tên người dùng
        String regex = "^[\\p{L}]+(\\s[\\p{L}]+)*$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(username);

        if (!matcher.matches()) {
            return "Tên sai định dạng";
        }

        return "";
    }
    
    public static String checkPhoneNumber(String phoneNumber) {
        String regex = "^0\\d{9}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(phoneNumber);
        if (matcher.matches()) {
            return "";
        } else if (phoneNumber.contains(" ")) {
            return "Số điện thoại không được chứa khoảng trắng.";
        } else {
            return "Số điện thoại không hợp lệ";
        }
    }

    public static String checkEmail(String email) {
        UserDAO uD = new UserDAO();
        
        String regex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z]+$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        
        if (uD.checkEmailExist(email)) {
            return "Email đã được đăng kí";
        } else if (matcher.matches()) {
            return "";
        } else if (email.contains(" ")) {
            return "Email không được chứa khoảng trắng.";
        } else {
            return "Email không hợp lệ";
        }
    }

    public static String checkIdentityCardNumber(String iden) {
        UserDAO uD = new UserDAO();
        
        String regex = "^[0-9]{12}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(iden);
        
        if (uD.checkIdenExist(iden)){
            return "Căn cước công dân đã được đăng kí";
        } else if (matcher.matches()) {
            return "";
        } else if (iden.contains(" ")) {
            return "Căn cước không được chứa khoảng trắng.";
        }else {
            return "Căn cước công dân không hợp lệ";
        }
    }
    
    public static String checkValidPassword(String password) {
        // Kiểm tra độ dài của mật khẩu
        if (password.length() < 8 || password.length() > 32) {
            return "Mật khẩu phải có độ dài từ 8 đến 32 kí tự.";
        }

        // Kiểm tra xem mật khẩu có chứa khoảng trắng không
        if (password.contains(" ")) {
            return "Mật khẩu không được chứa khoảng trắng.";
        }

        // Kiểm tra xem mật khẩu có ít nhất một chữ cái viết hoa không
        boolean containsUppercase = false;
        for (char character : password.toCharArray()) {
            if (Character.isUpperCase(character)) {
                containsUppercase = true;
                break;
            }
        }

        if (!containsUppercase) {
            return "Mật khẩu phải chứa ít nhất một chữ cái viết hoa.";
        }

        // Nếu mật khẩu thỏa mãn tất cả các điều kiện, trả về thông báo thành công
        return "";
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
//    public static void main(String[] args) {
//        String username = ""; 
//        String result = checkFullname(username);
//        System.out.println(result);
//    }

    

}
