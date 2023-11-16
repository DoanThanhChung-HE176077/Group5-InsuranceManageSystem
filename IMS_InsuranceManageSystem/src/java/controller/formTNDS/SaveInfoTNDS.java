/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.formTNDS;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dao.FormDAO;
import model.Form_TNDS;
import model.TNDS_Level;
import model.TNDS_Type;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.text.SimpleDateFormat;
//import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Form_Vatchat;

//import model.Package_Type;
//import java.time.LocalDateTime;
//import java.time.format.DateTimeFormatter;
/**
 *
 * @author Dell
 */
@WebServlet(name = "SaveInfoTNDS", urlPatterns = {"/saveInfoTNDS"})
public class SaveInfoTNDS extends HttpServlet {

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
            out.println("<title>Servlet SaveInfoTNDS</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaveInfoTNDS at " + request.getContextPath() + "</h1>");
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
     public   String msg="";
    @Override
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long amount = 0;
        //cap nhat gia tri cho ip_id = 1(tnds) hoac 2(vatchat) de sau khi thanh toán xong còn bi?t dang 
        //mua bán vs hop dong oai nao`
        String ip_id = "";
//        String creationBillDate = getCurrentDateTime();

        String check = request.getParameter("check");
        if (check.equals("tnds")) {
             HttpSession session = request.getSession();
            User user1 = (User) session.getAttribute("user");
            FormDAO dao = new FormDAO();
            dao.deleteUnpaidTnds();
            dao.checkExpiredContract();
            String type = request.getParameter("type");
            
            TNDS_Type type2 = dao.getType(Integer.parseInt(type));
            String soMay = request.getParameter("soMay");
            String bienXe = request.getParameter("bienXe");
            String soKhung = request.getParameter("soKhung");
            Date fromDate = Date.valueOf(request.getParameter("fromDate"));
            Date toDate = Date.valueOf(request.getParameter("toDate"));
            String lv_fee = request.getParameter("level");
           
           ArrayList<Form_TNDS> list = dao.getAllTnds(user1.getUser_id());
               System.out.println(list);
            for (int i = 0; i < list.size(); i++) {
               if(soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  soKhung.equalsIgnoreCase(list.get(i).getSoKhung())){
                    //Hợp đồng hết hạn
                    if(list.get(i).getStatus().equals("expired")){
                         System.out.println("b");
                        break;
                    }
                    //Hợp đồng chưa hết hạn
                    else {
                        msg= "Thời gian hợp đồng của xe vẫn còn";
                         System.out.println("c");
                        request.setAttribute("msg", msg);
                        request.getRequestDispatcher("HandleFormTNDS").forward(request, response);
                        
                        
                    }
                }
                //Khách hàng nhập sai
                if(
                        (soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && !bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  !soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))||
                        
                        (!soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  !soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))||
                        
                        (!soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && !bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))||
                        
                         (soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  !soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))||
                        
                        (soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && !bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))||
                        
                        (!soMay.equalsIgnoreCase(list.get(i).getSoMay())
                        && bienXe.equalsIgnoreCase(list.get(i).getBienXe())
                        &&  soKhung.equalsIgnoreCase(list.get(i).getSoKhung()))
                       
                        
                        
                    ){
                    msg = "Khách hàng vui lòng kiểm tra kĩ lại thông tin của xe khi đăng kí";
                     System.out.println("d");
                      request.setAttribute("msg", msg);
                      request.getRequestDispatcher("HandleFormTNDS").forward(request, response);
                }
            }
            String tax_fee = request.getParameter("tax-fee");
            String num = request.getParameter("num");
            String total = request.getParameter("amount");
           
            ip_id = "1";
            String lv_fee_value = dao.getTNDS_LevelbyId(Integer.parseInt(lv_fee)).getLv_value();
            Form_TNDS obj = new Form_TNDS(type2.getType_name(), soMay, bienXe, soKhung, fromDate, toDate, lv_fee_value, num, total, user1.getUser_id(), "1", "unpaid");
            dao.insertBill(obj);
            amount = Integer.parseInt(request.getParameter("amount")) * 100;

        } else if (check.equals("vatchat")) {
            //lay thong tin tu form => save cac id vao db tam unpaid + update ip_id = 2 + lay ra cac deduc_name, pt_name
            //de mang cho vao bangr bill, chu o bill ko de hien id dc 

               System.out.println("===================================== |Check save to contract vat chat ========================|");
               System.out.println("check: " + check);
             String fvc_brand_id = request.getParameter("send-brand_id");
             String fvc_model_id = request.getParameter("send-model_id");
             String fvc_pt_id = request.getParameter("send-pt_id1");
             String fvc_deduc_id = request.getParameter("send-deduc_id1");
             String fvc_startDate = request.getParameter("startDate");
             String fvc_endDate = request.getParameter("endDate");
             String fvc_totalPrice = request.getParameter("send-fvc_totalPrice");
             String amountsString = fvc_totalPrice;
             String fvc_soMay = request.getParameter("soMay"); //Device number
             String fvc_soKhung = request.getParameter("soKhung"); //Device chassis number
             String fvc_bienXe = request.getParameter("bienXe"); //License plates
//             if(!fvc_bienXe.matches("^[1-9][0-9][A-Za-z][1-9][-][0-9]*[1-9][0-9]*$")){
//                 request.setAttribute("", "Biển số xe sai không bao gồm khoảng trắng và các kí tự hợp lệ, ví dụ: 35B2-01234...");
//                 request.getRequestDispatcher("Fom")
//             }
             System.out.println("====================| input data | =======================");
             System.out.println("fvc_brand_id: " + fvc_brand_id);
            System.out.println("fvc_model_id: " + fvc_model_id);
            System.out.println("fvc_pt_id: " + fvc_pt_id);
            System.out.println("fvc_deduc_id: " + fvc_deduc_id);
            System.out.println("fvc_startDate: " + fvc_startDate);
            System.out.println("fvc_endDate: " + fvc_endDate);
            System.out.println("fvc_totalPrice: " + fvc_totalPrice);
            System.out.println("fvc_soMay: " + fvc_soMay);
            System.out.println("fvc_soKhung: " + fvc_soKhung);
            System.out.println("fvc_bienXe: " + fvc_bienXe);

             //update ip_id
            ip_id = "2";
            

            //parse id from string to int to save to db
            int parsedBrandId = Integer.parseInt(fvc_brand_id);
            int parsedModelId = Integer.parseInt(fvc_model_id);
            int parsedPtId = Integer.parseInt(fvc_pt_id);
            int parsedDeducId = Integer.parseInt(fvc_deduc_id);
            int parseTotal = removeDotsFromNumber(fvc_totalPrice);
            //get user
            HttpSession session = request.getSession();
            User user1 = (User) session.getAttribute("user");
            int user_id = user1.getUser_id(); // user_id

            FormDAO dao = new FormDAO();
            dao.checkExpiredContractVatChat();
            dao.deleteUnpaidVatChat();
//            //Check
             ArrayList<Form_Vatchat> list = dao.getAllVatChat();
            for (int i = 0; i < list.size(); i++) {
               if(fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum())){
                    //Hợp đồng hết hạn
                    if(list.get(i).getFvc_status().equals("expired")){
                         System.out.println("b");
                        break;
                    }
                    //Hợp đồng chưa hết hạn
                    else {
                        msg= "Thời gian hợp đồng của xe vẫn còn";
                         System.out.println("c");
                        request.setAttribute("msg", msg);
                        request.getRequestDispatcher("HandleFormVatChat").forward(request, response);
                        
                        
                    }
                }
                //Khách hàng nhập sai
                if(
                        (fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && !fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  !fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))||
                        
                        (!fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  !fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))||
                        
                        (!fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && !fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))||
                        
                         (fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  !fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))||
                        
                        (fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && !fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))||
                        
                        (!fvc_soMay.equalsIgnoreCase(list.get(i).getFvc_deviceNum())
                        && fvc_bienXe.equalsIgnoreCase(list.get(i).getFvc_licensePlates())
                        &&  fvc_soKhung.equalsIgnoreCase(list.get(i).getFvc_deviceChassisNum()))
                       
                        
                        
                    ){
                    msg = "Khach hang vui long kiem tra thong tin";
                     System.out.println("d");
                      request.setAttribute("msg", msg);
                      request.getRequestDispatcher("HandleFormVatChat").forward(request, response);
                     return;
                }
            }
            System.out.println("e");
            //add vào db

            if(dao.insertVatChatToFormVatChat(parsedBrandId, parsedModelId, parsedPtId, parsedDeducId, fvc_startDate, fvc_endDate, parseTotal, user_id, fvc_soMay, fvc_soKhung, fvc_bienXe, ip_id, "unpaid")){
                System.out.println("===============| SAVE TO VATCHAT: |=============");
                System.out.println("Save: DONE");
            }
            else {
                System.out.println("===============| SAVE TO VATCHAT: |=============");
                System.out.println("Save: FALSE -> VATCHAT O ADD DC VAO CONTRACT!!!!!!!!");
            }

            // update amount to send to vnpay
            amount = (removeDotsFromNumber(amountsString)) * 100;

        }


        System.out.println("======================| IP_ID | ===============");
        System.out.println("ip_id: "+ ip_id);
       

        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String orderType = "other";
        String bankCode = request.getParameter("bankCode");
        // code cua bill
        String vnp_TxnRef = "";
        if (ip_id.equals("2")) {
            vnp_TxnRef = Config.generateRandomStringVatChat();
            //#L2+.....
        } else if (ip_id.equals("1")) {
            vnp_TxnRef = Config.generateRandomStringTNDS();
            //#L1+.....
        }

        String vnp_IpAddr = Config.getIpAddress(request);
        String vnp_TmnCode = Config.vnp_TmnCode;

        //=================transfer data from this svl to bill  =============
        Map<String, String> vnp_Params = new HashMap<>();
        //=========map data of vat chat ======================
//        vnp_Params.put("bill_creationDate",creationBillDate);
        //=======map data of vnpay ==========
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");
        if (bankCode != null && !bankCode.isEmpty()) {
            vnp_Params.put("vnp_BankCode", bankCode);
        }
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toán đơn hàng: " + vnp_TxnRef);
        vnp_Params.put("vnp_OrderType", orderType);
        String locate = request.getParameter("language");
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        //vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
        vnp_Params.put("vnp_ReturnUrl", "http://localhost:9999/IMS_InsuranceManageSystem/HandleBill?ip_id=" + ip_id);

        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
        com.google.gson.JsonObject job = new JsonObject();
        job.addProperty("code", "00");
        job.addProperty("message", "success");
        job.addProperty("data", paymentUrl);
        System.out.println(vnp_TxnRef);
        Gson gson = new Gson();
        response.getWriter().write(gson.toJson(job));

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
//        request.setAttribute("msg", msg);
//        System.out.println(msg);
//                        request.getRequestDispatcher("HandleFormTNDS").forward(request, response);
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

    public static boolean validateLicensePlate(String input) {
        // Biểu thức chính quy
        String regex = "^[1-9][0-9][A-Za-z][1-9]-[0-9]*[1-9][0-9]*$";

        // Tạo đối tượng Pattern
        Pattern pattern = Pattern.compile(regex);

        // Tạo đối tượng Matcher
        Matcher matcher = pattern.matcher(input);

        // Kiểm tra khớp
        return matcher.matches();
    }
    public static int removeDotsFromNumber(String numberWithDots) {
        // Remove all dots and then parse the string as an integer
        String withoutDots = numberWithDots.replaceAll("\\.", "");
        try {
            return Integer.parseInt(withoutDots);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
//    public static String getCurrentDateTime() {
//        LocalDateTime currentDateTime = LocalDateTime.now();
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd-MM-yyyy");
//        String formattedDateTime = currentDateTime.format(formatter);
//        return formattedDateTime;
//    }
}
