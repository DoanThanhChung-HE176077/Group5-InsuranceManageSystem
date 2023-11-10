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
import java.text.SimpleDateFormat;



import java.util.Date;


import model.Contract;
import model.Form_TNDS;
import model.Form_Vatchat;
import model.User;

/**
 *
 * @author chun
 */
@WebServlet(name = "HandleBill", urlPatterns = {"/HandleBill"})
public class HandleBill extends HttpServlet {

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
            out.println("<title>Servlet HandleBill</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HandleBill at " + request.getContextPath() + "</h1>");
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
     *
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
        request.setAttribute("user", getUser);
        String bill_code = ""; //#L22AA9QB
        String bill_total = "";
        String bill_ip_id = request.getParameter("ip_id");
        System.out.println("===================| cehck bill_ip_id | ===================");
        System.out.println("bill_ip_id: "+ bill_ip_id);
        String bill_user = getUser.getUser_fullName();
        String bill_content = "Thanh toán thành công.";
        String bill_creationDate = request.getParameter("bill_creationDate");
        //hh:mm:ss dd-mm-yyyy
        String vnp_ResponseCode = request.getParameter("vnp_ResponseCode");
        if(vnp_ResponseCode.equals("00")){
            if (bill_ip_id.equals("2")) 
        {
            System.out.println("=============================| GO TO CONTRACT TO SAVE VATCHAT =====|");
            //go to vat chat
            bill_code = request.getParameter("vnp_OrderInfo");
            bill_total = remove2LastZeros(request.getParameter("vnp_Amount"));//loai bo 2 so 0 cuoi cung trc khi gan cho amount 
//            request.setAttribute("bill_total", bill_total);
            FormDAO dao = new FormDAO();
            Form_Vatchat obj = dao.getForm_VatChat();
            request.setAttribute("obj", obj);
           try {
                String start = obj.getStartDate();
                String end = obj.getEndDate();
                // Định dạng của chuỗi ngày đầu vào
                SimpleDateFormat inputDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                // Định dạng mới
                SimpleDateFormat outputDateFormat = new SimpleDateFormat("dd-MM-yyyy");
                // Chuyển đổi chuỗi thành đối tượng Date
                Date startDate =  inputDateFormat.parse(start);
                Date endDate =  inputDateFormat.parse(end);
                
                java.sql.Date a = java.sql.Date.valueOf(start);
                java.sql.Date b = java.sql.Date.valueOf(end);
//                System.out.println(a);
                if(dao.insertContractVatChat(new Contract(getUser.getUser_id(), a, b, Integer.parseInt(obj.getIp_id()),
                        obj.getFvc_id(), 0, obj.getTotalPrice()))){
                    System.out.println("==========================| SAVE VAT  CHAT TO CONTRACT |===============");
                    System.out.println("SAVE DONE !");
                }else {
                    System.out.println("==========================| SAVE VAT  CHAT TO CONTRACT |===============");
                    System.out.println("SAVE VAT CHAT TO CONTRACT FAILSE !");
                }

                // Format đối tượng Date thành chuỗi mới
                String startFormattedDate = outputDateFormat.format(startDate);
                String endFormattedDate = outputDateFormat.format(endDate);
                System.out.println(startFormattedDate);
                request.setAttribute("startDate", startFormattedDate);
                request.setAttribute("endDate", endFormattedDate);
                dao.updateStatusForLatestFormVatChat("paid");

            } catch (Exception E) {
                System.out.println(E);
            }

            request.setAttribute("hangXe", dao.getBranchById(obj.getBrand_id()).getBrand_name());
            request.setAttribute("hieuXe", dao.getModelById(obj.getModel_id()).getModel_name());
            request.setAttribute("pk", dao.getPakage_TypeById(obj.getPt_id()).getPt_percent());
            request.setAttribute("deduct", dao.getDeductible_LevelById(obj.getDeduc_id()).getDeduc_percent());
            System.out.println(dao.getPakage_TypeById(obj.getPt_id()).getPt_percent());
            System.out.println(dao.getDeductible_LevelById(obj.getDeduc_id()).getDeduc_percent());
            //save bill vào db
            
            //send data to bill.jsp
            request.getRequestDispatcher("BillOfVatChat.jsp").forward(request, response);
        } else if (bill_ip_id.equals("1")) {
            //go to tnds
            FormDAO dao = new FormDAO();
            Form_TNDS obj = dao.getForm_TNDS();
            System.out.println(obj.getId());
            request.setAttribute("obj", obj);
            dao.updateStatusTNDS(obj.getId());
            dao.insertContractTnds(new Contract(getUser.getUser_id(), obj.getStartDate(), obj.getEndDate(),
                    Integer.parseInt(obj.getIp_id()), obj.getId(),
                    Integer.parseInt(obj.getTongChiPhi())));
            request.getRequestDispatcher("BillOfInsuranceTNDS.jsp").forward(request, response);
        }
        }else{
            request.getRequestDispatcher("listInsuranceProduct").forward(request, response);
        }
        

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
        processRequest(request, response);
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
