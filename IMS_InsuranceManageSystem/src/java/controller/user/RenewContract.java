/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import controller.formTNDS.Config;
import dao.ContractDAO;
import dao.FormDAO;
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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import model.ContractTNDS;
import model.ContractVatchat;
import model.Form_TNDS;
import model.Form_Vatchat;
import model.User;

/**
 *
 * @author Dell
 */
@WebServlet(name="renewContract", urlPatterns={"/renewContract"})
public class RenewContract extends HttpServlet {
   
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
            out.println("<title>Servlet renewContract</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet renewContract at " + request.getContextPath () + "</h1>");
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
    int ip_id;
    int f_id;
    long amount = 0;
    int cid ;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       cid = Integer.parseInt(request.getParameter("cid"));
      request.setAttribute("cid", cid);
         ip_id = Integer.parseInt(request.getParameter("ip_id"));
         User u = new User();
        
        HttpSession session = request.getSession();
        u = (User) session.getAttribute("user");
        request.setAttribute("u", u);
        if (ip_id == 1){
            ContractDAO  c = new ContractDAO();
            FormDAO dao = new FormDAO();
            ContractTNDS contract = c.getTNDSbyId(cid);
            Form_TNDS obj = dao.getForm_TNDSById(contract.getTnds_id());
            f_id= obj.getId();
            request.setAttribute("obj", obj);
            request.getRequestDispatcher("RenewTNDS.jsp").forward(request, response);
        }
        if (ip_id == 2){
            
            System.out.println(cid);
            ContractDAO  c = new ContractDAO();
            FormDAO dao = new FormDAO();
            ContractVatchat contract = c.getVatchatbyId(cid);
            Form_Vatchat obj = dao.getForm_VatChatById(contract.getVatchat_id());
            System.out.println(obj);
            f_id= obj.getFvc_id();
            request.setAttribute("obj", obj);
            request.setAttribute("hangXe", dao.getBranchById(obj.getBrand_id()).getBrand_name());
            request.setAttribute("hieuXe", dao.getModelById(obj.getModel_id()).getModel_name());
            request.setAttribute("pk", dao.getPakage_TypeById(obj.getPt_id()).getPt_percent());
            request.setAttribute("deduct", dao.getDeductible_LevelById(obj.getDeduc_id()).getDeduc_percent());
            System.out.println(dao.getBranchById(obj.getBrand_id()).getBrand_name());
            request.getRequestDispatcher("RenewVatChat.jsp").forward(request, response);
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
        amount = Integer.parseInt(request.getParameter("amount")) * 100;
        System.out.println(request.getParameter("fromDate"));
        Date fromDate = Date.valueOf(request.getParameter("fromDate"));
        Date toDate = Date.valueOf(request.getParameter("toDate"));
        System.out.println(fromDate+" "+ toDate);
       String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String orderType = "other";
        String bankCode = request.getParameter("bankCode");
        // code cua bill
        String vnp_TxnRef = "";
        if (ip_id == 2) {
            vnp_TxnRef = Config.generateRandomStringVatChat();
            //#L2+.....
        } else if (ip_id == 1) {
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
        vnp_Params.put("vnp_ReturnUrl", "http://localhost:9999/IMS_InsuranceManageSystem/HandleRenew?ip_id=" + ip_id+"&f_id="+f_id+"&cid="+cid+"&fromDate="+fromDate+"&toDate="+toDate);
        System.out.println(ip_id +" "+ f_id);
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
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
