/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.blog;

import Dao.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author chun
 */
@MultipartConfig
public class blog_add extends HttpServlet {
   
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
            out.println("<title>Servlet blog_add</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet blog_add at " + request.getContextPath () + "</h1>");
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
        //processRequest(request, response);
        
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
        //-------------important : must include :@MultipartConfig before starting this calss ---------------------          

        //title
        String title = request.getParameter("title");
        //image
        Part filePart = request.getPart("fileName");
        String fileName = filePart.getSubmittedFileName();
        String location = request.getParameter("location");
        //user id
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        //blogType
        int typeBlog = Integer.parseInt(request.getParameter("blogType")) ;
        //blog tag
        int tagBlog = Integer.parseInt(request.getParameter("blogTag")) ;
        //blogContent
        String content = request.getParameter("editor");
        //creationdate
        String creationDate = request.getParameter("creationdate");
        String formatted_creationDate = convertDate(creationDate);
        //status
        String status = request.getParameter("status");
        
//        check data 
        System.out.println(title);
        System.out.println(content);
        System.out.println(user_id);
        System.out.println(tagBlog);
        System.out.println(typeBlog);
        System.out.println(status);
        
               
        //check file exist in folder location : ==============TRUE=================
        if (fileExists(location, fileName)) {
            // Print a message indicating whether the file exists or not
            System.out.println("-----------check file input exist in location -----");
            System.out.println("File --(" + fileName + ")-- exists in the provided path: " + location);
            String fileNameNew = renameIfFileExists(location, fileName);
            System.out.println("File with the same name already exists. Renamed to: " + fileNameNew);
            //in ra man hinh without jsp
            System.out.print("file name new: " + fileNameNew);
            //in ra server tomcat
            System.out.println("-----------Check receive input from user: --");
            System.out.println("Receive location: " + location);
            System.out.println("Receive file name: " + fileNameNew);

            OutputStream os = null;
            InputStream is = null;
            try {
                //ready to save 
                os = new FileOutputStream(new File(location + File.separator + fileNameNew));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("-----------Check file ready to save--");
                System.out.println("File location will save to: " + location);
                System.out.println("File name: " + fileNameNew);
                System.out.println("-----------upload result--------");
                System.out.println("File uploaded successfully nhal.");

                //save to db
//                BlogDAO dao = new BlogDAO();
//                System.out.println("-----------Check saving to db --");
//                if (dao.createBlog(title, content, 0, fileNameNew, user_id, creationDate, typeBlog,tagBlog , 0, status)) {
//                    System.out.println("Saving file to db : DONE.");
//                } else {
//                    System.out.println("Saving file to db : FAILSE.");
//                }
//                System.out.println("===========================================");

            } catch (Exception e) {
                System.out.print("Error upload at " + e.getMessage());
                System.out.println("no");
            }
 //check file exist in folder location : ==============FALSE=================
        } else {
            System.out.println("-----------check file input exist in location -----");
            System.out.println("File " + fileName + " does NOT exist in the provided path: " + location);
            //in ra man hinh without jsp
            System.out.print("file name1: " + fileName);
            //in ra server tomcat
            System.out.println("-----------Check receive input from user: --");
            System.out.println("Receive location: " + location);
            System.out.println("Receive file name: " + fileName);

            OutputStream os = null;
            InputStream is = null;
            try {
                //ready to save 
                os = new FileOutputStream(new File(location + File.separator + fileName));
                is = filePart.getInputStream();
                int read = 0;
                while ((read = is.read()) != -1) {
                    os.write(read);
                }
                System.out.println("-----------Check file ready to save--");
                System.out.println("File location will save to: " + location);
                System.out.println("File name: " + fileName);
                System.out.println("-----------upload result--------");
                System.out.println("File uploaded successfully nhal.");

                //save to db
//                BlogDAO dao = new BlogDAO();
//                System.out.println("--Check saving to db --");
//                if (dao.createBlog(title, content, 0, fileName, user_id, creationDate, typeBlog,tagBlog , 0, status)) {
//                    System.out.println("Saving file to db : DONE.");
//                } else {
//                    System.out.println("Saving file to db : FAILSE.");
//                }
//                System.out.println("===========================================");
//                
            } catch (Exception e) {
                System.out.print("Error upload at " + e.getMessage());
                System.out.println("no");
            }
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

    //convert date
    public static String convertDate(String inputDate) {
        try {
            // Define the input and output date formats
            SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy");
            SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
            // Parse the input date string
            Date date = inputFormat.parse(inputDate);
            // Format the date in the desired output format
            String formattedDate = outputFormat.format(date);
            return formattedDate;
        } catch (ParseException e) {
            // Handle any parsing exceptions
            e.printStackTrace();
            return null; // Or throw an exception or return an error message as needed
        }
    }
    
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
