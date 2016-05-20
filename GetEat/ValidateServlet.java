/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
import javax.servlet.http.HttpSession;

@WebServlet(name = "ValidateServlet", urlPatterns = {"/ValidateServlet"})
public class ValidateServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        try {
            String sql = "select * from member where username='" + username + "' and password='" + password + "' and status ='AKTIF'";
            DatabaseConnection db = new DatabaseConnection();
            Connection c = db.getDBConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                request.getSession(true).setAttribute("Username", rs.getString("username"));
                switch (rs.getString("tipe")) {
                    case "EATERS":
                        response.sendRedirect("HomeEaters.jsp");
                        break;
                    case "FOODHUNTER":
                        response.sendRedirect("View_Home_Foodhunter.jsp");
                        break;
                    case "TENANT":
                        response.sendRedirect("Halaman_Tenant.jsp");
                        break;
                    case "ADMIN":
                        response.sendRedirect("Dashboard.jsp");
                        break;
                    default:
                        break;
                }
                
            } else {
                 response.sendRedirect("ExceptionPageWeb_2.jsp");
        
            }
        } catch (SQLException ex) {
          
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
