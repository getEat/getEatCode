package tools;

import Model.FoodHunter;
import control.FoodHunterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Putra
 */
public class ServletRegister extends HttpServlet {
    
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletRegister</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletRegister at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Masuk get</title>");            
            out.println("</head>");
            out.println("<body>");
                     
            
        
        FoodHunterDAO reg = new FoodHunterDAO();
        FoodHunter fh = new FoodHunter();
        if (request.getParameter("nama") != null ) {
            try {
                fh.setNama((String)request.getParameter("nama"));
                fh.setEmail((String)request.getParameter("email"));
                fh.setSosialMedia((String)request.getParameter("sm"));
                reg.add(fh);
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegister.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        out.println("Masuk get"); 
         out.println(fh.getNama()); 
         out.println(fh.getEmail());
         out.println(fh.getSosialMedia()); 
           
            out.println("</body>");
            out.println("</html>"); 

        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        out.println("masuk Post");
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
