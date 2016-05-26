/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.EatersDAO;
import Controller.MemberDAO;
import Model.Eaters;
import Model.Member;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
/**
 *
 * @author Jonathan
 */
public class RegisterServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        EatersDAO dao = new EatersDAO();
        MemberDAO mdao = new MemberDAO();
        Eaters ea = new Eaters();
        Member m = new Member();
        String nama = (String) request.getParameter("Nama");
        String alamat = (String) request.getParameter("Alamat");
        String email = (String) request.getParameter("Email");
        String username = (String) request.getParameter("Username");
        String password = (String) request.getParameter("Password");
        if (nama == "") {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExceptionPageWeb.jsp");
            dispatcher.forward(request, response);
        }
        if (alamat == "") {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExceptionPageWeb.jsp");
            dispatcher.forward(request, response);
        }
        if (email == "") {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExceptionPageWeb.jsp");
            dispatcher.forward(request, response);
        }
        if (username == "") {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExceptionPageWeb.jsp");
            dispatcher.forward(request, response);
        }
        if (password == "") {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExceptionPageWeb.jsp");
            dispatcher.forward(request, response);
        } else {
            try {
                ea.setNama(nama);
                ea.setAlamat(alamat);
                ea.setEmail(email);
                m.setUserName(username);
                m.setPassword(password);
                mdao.addEaters(m);
                dao.addEaters(ea,m);               
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.html");
                dispatcher.forward(request, response);
            } catch (Exception ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
