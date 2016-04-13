/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ValidateServlet", urlPatterns = {"/ValidateServlet"})
public class ValidateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        try {
            String sql = "select * from member where username='" + username + "' and password='" + password + "'";
            DatabaseConnection db = new DatabaseConnection();
            Connection c = db.getDBConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                request.getSession(true).setAttribute("Username", rs.getString("username"));
                if (rs.getString("tipe").equals("EATERS")) {
                    response.sendRedirect("Halaman_Eaters.jsp");
                } else if (rs.getString("tipe").equals("FOODHUNTER")) {
                    response.sendRedirect("Halaman_Foodhunter.jsp");
                } else if (rs.getString("tipe").equals("TENANT")) {
                    response.sendRedirect("Halaman_Tenant.jsp");
                } else if (rs.getString("tipe").equals("ADMIN")) {
                    response.sendRedirect("Dashboard.html");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ValidateServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

    public static int ExecQuery(String sql) throws SQLException {
        DatabaseConnection db = new DatabaseConnection();
        Connection c = db.getDBConnection();
        Statement stmt = c.createStatement();
        return stmt.executeQuery(sql).getFetchSize();
    }

}
