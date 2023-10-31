/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.BlogDAO;
import dao.UserDAO;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Blogs;
import model.NewBl;

/**
 *
 * @author ADMIN
 */
public class Admin_Staff_list extends HttpServlet {
   
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
        UserDAO ud = new UserDAO();
        BlogDAO bd = new BlogDAO();
        ArrayList<User> list = ud.getALLStaff();
        int page, numberpage=5;
        int size = list.size();
        int num = (size%5==0?(size/5):((size/5))+1);
        String xpage = request.getParameter("page");
        if (xpage == null){
            page = 1;
        }else{
            page = Integer.parseInt(xpage);
        }
        int start, end;
        start = (page-1)*numberpage;
        end = Math.min(page*numberpage,size);
        List <User> listU= ud.getListbyPage(list, start, end);
        request.setAttribute("listU", listU);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        ArrayList<NewBl> list2 = bd.getNewBlogsWithUserName();
        request.setAttribute("listNB", list2);
        request.getRequestDispatcher("Admin_Staff_list.jsp").forward(request, response);
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
