/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.user;

import dao.BlogDAO;
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
import model.User;

/**
 *
 * @author chun
 */
@MultipartConfig
public class UserVerify extends HttpServlet {
   
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
            out.println("<title>Servlet UserVerify</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserVerify at " + request.getContextPath () + "</h1>");
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
        //socccd
        String cccd = (request.getParameter("soCCCD")).trim();
        System.out.println("========================= so CCCD ===============");
        System.out.println(cccd);
        //user_id 
        HttpSession session = request.getSession();
        User user1 = (User) session.getAttribute("user");
        int user_id = user1.getUser_id();
        System.out.println("=========================| User id ===============");
        System.out.println(user_id);
        System.out.println("==================================================");
        //image
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        
        //=============solve file image============
        ServletContext context = getServletContext();// Get the ServletContext
        String imageSaveAt = "image\\cccd\\";// URL to the folder where the image will be saved, e.g., "image/chung.png"
        String rootProjectUrl = context.getRealPath("/"); // Root project URL is in the "build" folder
        String newRootProjectUrl = rootProjectUrl.replace("build\\web\\", "web\\");// Change URL to the web context
        String finalUrl = newRootProjectUrl + imageSaveAt;// Construct the absolute path to the image
        
        //========Image solve check===============
        System.out.println("==================image solved check==============");
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
            System.out.println("=====================Check file exist=======================");
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

                //save to db
                UserDAO dao = new UserDAO();
                System.out.println("-------Check saving to db -------");
                if (dao.verifyUserRequest(imageFileName, cccd, user_id)) {
                    System.out.println("Saving file to db : DONE.");
                    //update sesssion
                    User u =(User) session.getAttribute("user");
                    u.setUser_iden_img(imageFileName);
                    session.setAttribute("user", u);
                } else {
                    System.err.println("Saving file to db : FAILSE.");
                }
                System.out.println("===========================================");

            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        } else {
            System.out.println("=====================Check file exist=======================");
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

                //save to db
                UserDAO dao = new UserDAO();
                System.out.println("-------Check saving to db -------");
                if (dao.verifyUserRequest(imageFileName, cccd, user_id)) {
                    System.out.println("Saving file to db : DONE.");
                    //update sesssion
                    User u = (User) session.getAttribute("user");
                    u.setUser_iden_img(imageFileName);
                    session.setAttribute("user", u);
                } else {
                    System.err.println("Saving file to db : FAILSE.");
                }
                System.out.println("===========================================");

            } catch (Exception e) {
                System.err.print("Error upload: " + e.getMessage());
                System.err.println("Error: " + e.getMessage());
            }
        }

        response.sendRedirect("/IMS_InsuranceManageSystem/");

        
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
