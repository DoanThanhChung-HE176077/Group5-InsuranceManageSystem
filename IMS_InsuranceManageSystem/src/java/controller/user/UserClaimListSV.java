/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import com.google.gson.Gson;
import dao.ContractDAO;
import dao.UserDAO;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import model.Claims;
import model.Contract;
import model.User;

/**
 *
 * @author chun
 */
@MultipartConfig
public class UserClaimListSV extends HttpServlet {
   
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
            out.println("<title>Servlet UserClaimListSV</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserClaimListSV at " + request.getContextPath () + "</h1>");
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
        int claim_id = Integer.parseInt(request.getParameter("claim_id"));
        if (request.getParameter("claim_id") == null) {
            System.out.println("Claim_id null");
        } else {
            System.out.println("Claim_id:" + claim_id);
        }
        ContractDAO dao = new ContractDAO();
        
        Claims claim = dao.getClaimById(claim_id);
        
        String jsonClaim = new Gson().toJson(claim);
        
        // Set response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Write JSON data to the response
        response.getWriter().write(jsonClaim);
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
//        int claim_id = Integer.parseInt(request.getParameter("user_id"));

        HttpSession session = request.getSession();
        User user1 = (User) session.getAttribute("user");
        int user_id = user1.getUser_id();
        int contract_id = Integer.parseInt(request.getParameter("contract_id"));
        String creationDate = request.getParameter("creationDate");
        String claim_description = request.getParameter("claim_description");
        String claim_img_des = "";
        String claim_file_des = "";
        String claim_bank = request.getParameter("claim_bank");
        String claim_bank_number = request.getParameter("claim_bank_number");
        //Pending + Accept + Reject
        String claim_status = "pending";
        //check data input
        System.out.println(user_id);
        System.out.println(contract_id);
        System.out.println(creationDate);
        System.out.println(claim_description);
        System.out.println(claim_img_des);
        System.out.println(claim_file_des);
        System.out.println(claim_bank);
        System.out.println(claim_bank_number);
        System.out.println(claim_status);

        //====================================================================================================================
        //solve file
        System.out.println("============================| SOLVE FILE IMG |============================");
        Part filePart = request.getPart("claim_img_des");
        String fileName = filePart.getSubmittedFileName();
        
        //============= solve file image============
        ServletContext context = getServletContext();// Get the ServletContext
        String imageSaveAt = "image\\claim\\";// URL to the folder where the image will be saved, e.g., "image/chung.png"
        String rootProjectUrl = context.getRealPath("/"); // Root project URL is in the "build" folder
        String newRootProjectUrl = rootProjectUrl.replace("build\\web\\", "web\\");// Change URL to the web context
        String finalUrl = newRootProjectUrl + imageSaveAt;// Construct the absolute path to the image

        //======== Image solve check===============
        System.out.println("================== Image solved check==============");
        System.out.println("+-----------------------------+------------------------+");
        System.out.println("| Name                        | Data                   |");
        System.out.println("+-----------------------------+------------------------+");
        System.out.printf("| %-50s | %s%n", "File Name", fileName);
        System.out.printf("| %-50s | %s%n", "Image Save At", imageSaveAt);
        System.out.printf("| %-50s | %s%n", "Root Project URL (build)", rootProjectUrl);
        System.out.printf("| %-50s | %s%n", "New Root Project URL", newRootProjectUrl);
        System.out.printf("| %-50s | %s%n", "New Root Project URL + Image", newRootProjectUrl + imageSaveAt);
        System.out.printf("| %-50s | %s%n", "True Final Folder URL", finalUrl);
        System.out.println("+-----------------------------+------------------------+");
        
        //========================SAVE TO DB ==========================
        // Print a message indicating whether the file exists or not
        if (fileExists(finalUrl, fileName)) {
            System.out.println("=====================Check file exist2=======================");
            System.out.println("File (" + fileName + ") exists in the provided path: " + finalUrl);
            String fileNameNew = renameIfFileExists(finalUrl, fileName);
            System.out.println("File with the same name already exists. Renamed to: " + fileNameNew);
            System.out.print("File name new: " + fileNameNew);
            System.out.println("Receive location: " + finalUrl);
            System.out.println("Receive file name: " + fileNameNew);
            //=========================================
            OutputStream os = null;
            InputStream is = null;
            try {
                // Ready to save
                os = new FileOutputStream(new File(finalUrl + File.separator + fileNameNew));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("========READY SAVING TO DB=========");
                System.out.println("File location will be saved to: " + finalUrl);
                System.out.println("File name ORIGIN: " + fileNameNew);
                String imageFileName = "Image/cccd/" + fileNameNew;
                System.out.println("File name TO SAVE: " + imageFileName);
                System.out.println("File uploaded successfully.");

                //UPDATE claim_img_des TO SAVE TO DB
                claim_img_des = imageFileName;

            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        } else {
            System.out.println("=====================Check file exist2=======================");
            System.out.println("File " + fileName + " does NOT exist in the provided path: " + finalUrl);
            System.out.println("File name: " + fileName);
            System.out.println("=========================================================");
            OutputStream os = null;
            InputStream is = null;
            try {
                // Ready to save
                os = new FileOutputStream(new File(finalUrl + File.separator + fileName));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("========READY SAVING TO DB=========");
                System.out.println("File location will be saved to: " + finalUrl);
                System.out.println("File name ORIGIN: " + fileName);
                String imageFileName = "Image/cccd/" + fileName;
                System.out.println("File name TO SAVE: " + imageFileName);
                System.out.println("File uploaded successfully.");

                //UPDATE claim_img_des TO SAVE TO DB
                claim_img_des = imageFileName;

            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        }
        

        //=======================================================================================================================
        
        
        
        System.out.println("============================| SOLVE FILE DOC |============================");
        Part filePartdoc = request.getPart("claim_file_des");
        String fileNamedoc = filePartdoc.getSubmittedFileName();
        //============= solve file doc============
        ServletContext contextdoc = getServletContext();// Get the ServletContext
        String imageSaveAtdoc = "Documents\\";// URL to the folder where the image will be saved, e.g., "image/chung.png"
        String rootProjectUrldoc = contextdoc.getRealPath("/"); // Root project URL is in the "build" folder
        String newRootProjectUrldoc = rootProjectUrldoc.replace("build\\web\\", "web\\");// Change URL to the web context
        String finalUrldoc = newRootProjectUrldoc + imageSaveAtdoc;// Construct the absolute path to the image

        //======== DOC solve check===============
        System.out.println("==================| DOC solved check |==============");
        System.out.println("+-----------------------------+------------------------+");
        System.out.println("| Name                        | Data                   |");
        System.out.println("+-----------------------------+------------------------+");
        System.out.printf("| %-50s | %s%n", "File Name DOC", fileNamedoc);
        System.out.printf("| %-50s | %s%n", "DOC Save At", imageSaveAtdoc);
        System.out.printf("| %-50s | %s%n", "Root Project URL (build)", rootProjectUrldoc);
        System.out.printf("| %-50s | %s%n", "New Root Project URL", newRootProjectUrldoc);
        System.out.printf("| %-50s | %s%n", "New Root Project URL + Image", newRootProjectUrldoc + imageSaveAtdoc);
        System.out.printf("| %-50s | %s%n", "True Final Folder URL", finalUrldoc);
        System.out.println("+-----------------------------+------------------------+");

        //========================SAVE TO DB ==========================
        // Print a message indicating whether the file exists or not
        if (fileExists(finalUrldoc, fileNamedoc)) {
            System.out.println("=====================Check file exist=======================");
            System.out.println("File (" + fileNamedoc + ") exists in the provided path: " + finalUrldoc);
            String fileNameNewdoc = renameIfFileExists(finalUrldoc, fileNamedoc);
            System.out.println("File with the same name already exists. Renamed to: " + fileNameNewdoc);
            System.out.print("File name new: " + fileNameNewdoc);
            System.out.println("Receive location: " + finalUrldoc);
            System.out.println("Receive file name: " + fileNameNewdoc);
            //=========================================
            OutputStream os = null;
            InputStream is = null;
            try {
                // Ready to save
                os = new FileOutputStream(new File(finalUrldoc + File.separator + fileNameNewdoc));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("========READY SAVING TO DB=========");
                System.out.println("File location will be saved to: " + finalUrldoc);
                System.out.println("File name ORIGIN: " + fileNameNewdoc);
                String docFileName = "Documents/" + fileNameNewdoc;
                System.out.println("File name TO SAVE: " + docFileName);
                System.out.println("File uploaded successfully.");

                //UPDATE claim_img_des TO SAVE TO DB
                claim_file_des = docFileName;

            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        } else {
            System.out.println("=====================Check file exist=======================");
            System.out.println("File " + fileNamedoc + " does NOT exist in the provided path: " + finalUrldoc);
            System.out.println("File name: " + fileNamedoc);
            System.out.println("=========================================================");
            OutputStream os = null;
            InputStream is = null;
            try {
                // Ready to save
                os = new FileOutputStream(new File(finalUrldoc + File.separator + fileNamedoc));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("========READY SAVING TO DB=========");
                System.out.println("File location will be saved to: " + finalUrldoc);
                System.out.println("File name ORIGIN: " + fileNamedoc);
                String docFileName = "Documents/" + fileNamedoc;
                System.out.println("File name TO SAVE: " + docFileName);
                System.out.println("File uploaded successfully.");


                //UPDATE claim_img_des TO SAVE TO DB
                claim_file_des = docFileName;
                
            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        }
        
        
        //save vao table claim
        ContractDAO cdao = new ContractDAO();
        if(cdao.createClaim(user_id, contract_id, creationDate, claim_description, claim_img_des, claim_file_des, claim_bank, claim_bank_number, claim_status)){
            System.out.println("========================== SAVE CALIM OK ==================");
            System.out.println("claim_file_des: " + claim_file_des);
            System.out.println("claim_img_des : " + claim_img_des);
        }else {
            System.out.println("========================== SAVE CALIM FAILSEEEEEEEE ==================");
        }
        
        
        response.sendRedirect("/IMS_InsuranceManageSystem/UserClaimListShow");
    }
    

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    // Method to check if the file exists in the provided path

    private boolean fileExists(String location, String fileName) {
        File file = new File(location + File.separator + fileName);
        return file.exists();
    }

    // Method to rename the uploaded file if it already exists
    private String renameIfFileExists(String location, String fileName) {
        String baseName = fileName;
        String extension = "";
        int dotIndex = fileName.lastIndexOf('.');

        // Separate the base name and extension
        if (dotIndex > 0) {
            baseName = fileName.substring(0, dotIndex);
            extension = fileName.substring(dotIndex);
        }

        int count = 1;
        String newFileName = fileName;
        // Check for existing files with similar names
        while (fileExists(location, newFileName)) {
            newFileName = baseName + "_" + count + extension;
            count++;
        }
        return newFileName;
    }
}
