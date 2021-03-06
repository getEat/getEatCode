package Controller;

import Model.FoodHunter;
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
import javax.servlet.http.HttpSession;


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
        String s = null;
       
//        HttpSession session = request.getSession(true);
        FoodHunterDAO reg = new FoodHunterDAO();
        FoodHunter fh = new FoodHunter();
        if (request.getParameter("nama") != null ) {
            try {
                fh.setNama((String)request.getParameter("nama"));
                fh.setEmail((String)request.getParameter("email"));
                fh.setSosialMedia((String)request.getParameter("sm"));
                reg.add(fh);
                s="berhasil";
//                session.setAttribute("s", "berhasil");
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegister.class.getName()).log(Level.SEVERE, null, ex);
                s="gagal";
//               session.setAttribute("s", "gagal");
            }
        }
request.setAttribute("s", s);
RequestDispatcher view = request.getRequestDispatcher("View_Registrasi_Foodhunter.jsp");
view.forward(request, response); 
//    session.setAttribute("s", "s");
//        request.setAttribute("s", s);
//        request.getRequestDispatcher("View_Registrasi_Foodhunter.jsp").forward(request, response);
        
        
           
            
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
