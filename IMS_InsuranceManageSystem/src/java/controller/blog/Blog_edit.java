/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.blog;

import static controller.blog.Blog_add.convertDate;
import dao.BlogDAO;
import model.Blog_tag;
import model.Blog_type;
import model.Blogs;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pc minh
 */
public class Blog_edit extends HttpServlet {
   
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
            out.println("<title>Servlet blog_edit</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet blog_edit at " + request.getContextPath () + "</h1>");
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

        String bid_raw = request.getParameter("bl_id");
        BlogDAO bgdao = new BlogDAO();
        try{
            int bid = Integer.parseInt(bid_raw);
            ArrayList<Blog_tag> tag = bgdao.getBlogTag();
            ArrayList<Blog_type> type = bgdao.getBlogType();
            Blogs blog = bgdao.getABlogByBlogId(bid);
            request.setAttribute("blog", blog);
            request.setAttribute("listTag", tag);
            request.setAttribute("listType", type);
            request.getRequestDispatcher("Blog_edit.jsp").forward(request, response);
        }
        catch(NumberFormatException e){
            Logger.getLogger(Blog_edit.class.getName()).log(Level.SEVERE, null, e);
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
        //processRequest(request, response);
        //solve data from Blog_edit.jsp
        //-------------important : must include :@MultipartConfig before starting this calss ---------------------          
        
        //id
        int bid = Integer.parseInt(request.getParameter("bl_id"));
        //title
        String title = request.getParameter("title");
        //image
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        //user id
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        //blogType
        String typeBlog = request.getParameter("blogType") ;
        //blog tag
        String tagBlog = request.getParameter("blogTag") ;
        //blogContent
        String content = request.getParameter("editor");
        //creationdate
        String creationDate = request.getParameter("creationdate");
        String formatted_creationDate = convertDate(creationDate);
        //status
        String status = request.getParameter("status");
        
        
        //=============solve file image============
        ServletContext context = getServletContext();// Get the ServletContext
        String imageSaveAt = "image\\";// URL to the folder where the image will be saved, e.g., "image/chung.png"
        String rootProjectUrl = context.getRealPath("/"); // Root project URL is in the "build" folder
        String newRootProjectUrl = rootProjectUrl.replace("build\\web\\", "web\\");// Change URL to the web context
        String finalUrl = newRootProjectUrl + imageSaveAt;// Construct the absolute path to the image
        
        
       //===========check data =================
        System.out.println("================CHECK DATA=======");
        System.out.println("title: " + title);
        System.out.println("content: " + content);
        System.out.println("like: 0" );
        //img v
        System.out.println("user_id: " + user_id);
        System.out.println("creationDate: " + formatted_creationDate);
        System.out.println("tagBlog: " + tagBlog);
        System.out.println("typeBlog: " + typeBlog);
        System.out.println("View: 0");
        System.out.println(status);
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
        //=========================================
        
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
                String imageFileName = "Image/" + fileNameNew;
                System.out.println("File name TO SAVE: " + imageFileName);
                System.out.println("File uploaded successfully.");

                //save to db
                BlogDAO dao = new BlogDAO();
                Blogs blog = new Blogs(bid, title, content, 0, imageFileName, user_id, formatted_creationDate, typeBlog, tagBlog, 0, status);
                System.out.println("-------Check saving to db -------");
                if (dao.updateBlog(blog)){
                    System.out.println("Saving file to db : DONE.");
                } else {
                    System.out.println("Saving file to db : FAILSE.");
                }
                System.out.println("===========================================");

            } catch (Exception e) {
                System.out.print("Error upload: " + e.getMessage());
                System.out.println("Error: " + e.getMessage());
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
                String imageFileName = "Image/" + fileName;
                System.out.println("File name TO SAVE: " + imageFileName);
                System.out.println("File uploaded successfully.");

                //save to db
                BlogDAO dao = new BlogDAO();
                Blogs blog = new Blogs(bid, title, content, 0, imageFileName, user_id, formatted_creationDate, typeBlog, tagBlog, 0, status);
                System.out.println("-------Check saving to db -------");
                if (dao.updateBlog(blog)) {
                    System.out.println("Saving file to db : DONE.");
                } else {
                    System.out.println("Saving file to db : FAILSE.");
                }
                System.out.println("===========================================");

            } catch (Exception e) {
                System.out.print("Error upload: " + e.getMessage());
                System.out.println("Error: " + e.getMessage());
            }
        }
        
        response.sendRedirect("blog_list");
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
