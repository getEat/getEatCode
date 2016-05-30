/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jonathan
 */
public class SearchServlet extends HttpServlet {
    
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
        PrintWriter out = response.getWriter();
        String city = (String) request.getParameter("city");
        String tenantname = (String) request.getParameter("tenantname");
        String kategori = (String) request.getParameter("kategori");
        String query="";
        if (city == "") {
            query = "select * from review where namatenant='" + tenantname
                    + "' and kategori='" + kategori + "'";
        } else if (tenantname == "") {
            query = "select * from review where kategori='" + kategori
                    + "' and city='" + city + "'";
        } else if (kategori == "") {
            query = "select * from review where namatenant='" + tenantname
                    + "' and city='" + city + "'";
        } else if (city == "" && tenantname == "") {
            query = "select * from review where kategori='" + kategori + "'";
        } else if (city == "" && kategori == "") {
            query = "select * from review where namatenant='" + tenantname + "'";
        } else if (tenantname == "" && kategori == "") {
            query = "select * from review where city='" + city + "'";
        } else {
            query = "select * from review where namatenant='" + tenantname
                    + "' and kategori='" + kategori + "' and city='" + city + "'";
        }
        ReviewDAO rdao = new ReviewDAO();
        out.print(query);
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
        processRequest(request, response);
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
