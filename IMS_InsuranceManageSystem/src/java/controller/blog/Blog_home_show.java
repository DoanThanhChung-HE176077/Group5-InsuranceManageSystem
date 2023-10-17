/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.blog;

import dao.BlogDAO;
import model.Blogs;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author chun
 */
public class Blog_home_show extends HttpServlet {
   
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
            out.println("<title>Servlet blog_home_show</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet blog_home_show at " + request.getContextPath () + "</h1>");
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
        
        BlogDAO bg = new BlogDAO();
        
        //Tat ca bai viet
        ArrayList<Blogs> listBlog = bg.getAllBlogs();
        if (listBlog == null) {
            System.out.println("list blog to blog home FAILSE!!!");
        }else{
            System.out.println("list blog to blog home DONEEEE!!!");
        }
        
        //Top 5 bai viet xem nhieu nhat
        ArrayList<Blogs> listTop5Blogs = bg.getTop5Blogs();
        if (listTop5Blogs == null) {
            System.out.println("list Top 5 blog to blog home FAILSE!!!");
        }else{
            System.out.println("list Top 5 blog to blog home DONEEEE!!!");
        }
        
        //Cac bai viet noi bat slider : 15b
        ArrayList<Blogs> listTop15Blogs = bg.getTop15Blogs();
        if (listTop15Blogs == null) {
            System.out.println("list Top 15 slider blog to blog home FAILSE!!!");
        }else{
            System.out.println("list Top 15 slider blog to blog home DONEEEE!!!");
        }
        
        request.setAttribute("listBlog", listBlog);
        request.setAttribute("listTop5Blogs", listTop5Blogs);
        request.setAttribute("listTop15Blogs", listTop15Blogs);
//        response.sendRedirect("Blog_home.jsp");
        request.getRequestDispatcher("Blog_home.jsp").forward(request, response);
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
        processRequest(request, response);
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
