package Controller;

import Model.Foodhunter;
import Model.Member;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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

@WebServlet(name = "ServletRegister", urlPatterns = {"/ServletRegister"})
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
        MemberDAO mem = new MemberDAO();
        Foodhunter fh = new Foodhunter();
        Member m = new Member();
        if (request.getParameter("nama") != null ) {
            try {
                fh.setNama((String)request.getParameter("nama"));
                fh.setEmail((String)request.getParameter("email"));
                fh.setSosialMedia((String)request.getParameter("sm"));
                m.setPassword((String)request.getParameter("pass"));
                m.setUserName((String)request.getParameter("nama"));
                String id = reg.gen();
                reg.add(fh,id);
                mem.add(m,id);
                s="berhasil";
            } catch (SQLException ex) {
                Logger.getLogger(ServletRegister.class.getName()).log(Level.SEVERE, null, ex);
                s="gagal";
            }
        }
request.setAttribute("s", s);
RequestDispatcher view = request.getRequestDispatcher("View_Registrasi_Foodhunter.jsp");
view.forward(request, response); 
        
           
            
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
