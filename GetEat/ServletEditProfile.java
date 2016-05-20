/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.Foodhunter;
import Model.Member;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletEditProfile", urlPatterns = {"/ServletEditProfile"})
/**
 *
 * @author Putra
 */
public class ServletEditProfile extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEditProfile</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEditProfile at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
         String s = null;
       HttpSession ses= request.getSession(true);
        FoodHunterDAO reg = new FoodHunterDAO();
        MemberDAO memDAO = new MemberDAO();
         Member m = new Member();
        Foodhunter fh = new Foodhunter();
        if (request.getParameter("nama") != null ) {
            try {
                fh.setNama((String)request.getParameter("nama"));
                fh.setEmail((String)request.getParameter("email"));
                fh.setSosialMedia((String)request.getParameter("sm"));
                m.setUserName((String)request.getParameter("nama"));
                m.setPassword((String)request.getParameter("password"));
                reg.updateFoodHunter(fh,(String)ses.getAttribute("Username"));
                memDAO.updateFoodHunter(m, (String)ses.getAttribute("Username"));
                s="berhasil";
                ses.setAttribute("Username", fh.getNama());
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegister.class.getName()).log(Level.SEVERE, null, ex);
                s="gagal";
            }
        }
        
request.setAttribute("s", s);
RequestDispatcher view = request.getRequestDispatcher("view_EditProfile_Foodhunter.jsp");
view.forward(request, response); 
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
