/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.EatersDAO;
import Model.Eaters;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        Eaters ea = new Eaters();
        String nama = (String) request.getParameter("Nama");
        String alamat = (String) request.getParameter("Alamat");
        String email = (String) request.getParameter("Email");
        String username = (String) request.getParameter("Username");
        String password = (String) request.getParameter("Password");
        if (nama == "") {
            out.println("Field Nama harus diisi");
        } 
        if (alamat == "") {
            out.println("Field Alamat harus diisi");
        } 
        if (email == "") {
            out.println("Field Email harus diisi");
        } 
        if (username == "") {
            out.println("Field Username harus diisi");
        } 
        if (password == "") {
            out.println("Field Password harus diisi");
        } 
        else {
            try {
                ea.setNama(nama);
                ea.setAlamat(alamat);
                ea.setEmail(email);
                dao.addEaters(ea);
            } catch (Exception ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            out.print(ea.getNama());
            out.print(ea.getAlamat());
            out.print(ea.getEmail());
            out.print("sukses");
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
