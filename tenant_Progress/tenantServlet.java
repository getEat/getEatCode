/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author tommynmanoppo
 */
public class tenantServlet extends HttpServlet {

     // For Tomcat, define as <Resource> in context.xml and declare as <resource-ref> in web.xml.
   

   private TenantDAO dao;
   private ReviewDAO reviewDAO;
   
    private static String INSERT_OR_EDIT = "/Halaman_Profil_Tenant.jsp";
    private static String LIST_REVIEW= "/Halaman_Home_Tenant.jsp";

    public tenantServlet(){
        super();
       dao = new TenantDAO();
       reviewDAO = new ReviewDAO();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tenantServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tenantServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

       if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            String tenId = request.getParameter("idtenant");
            Tenant ten = dao.getTenantById(tenId);
            request.setAttribute("ten", ten);
        } 
       else if (action.equalsIgnoreCase("listReview")){
            forward = LIST_REVIEW;
            request.setAttribute("review", reviewDAO.getAllReviews("qw3222"));
        } 
       else {
            forward = INSERT_OR_EDIT;
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
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
        Tenant tena = new Tenant();
        tena.setNama(request.getParameter("nama"));
        tena.setAlamatTempatMakan(request.getParameter("address"));
        tena.setUsername(request.getParameter("user"));
        tena.setPassword(request.getParameter("password"));
        tena.setOwner(request.getParameter("owner"));
    
        String tenantID = request.getParameter("idtenant");
        if(tenantID != null) {
            tena.setIdTenant(tenantID);
            dao.updateTenant(tena);
        }
        else {
            
        }

        RequestDispatcher view = request.getRequestDispatcher(LIST_REVIEW);
        request.setAttribute("review", reviewDAO.getAllReviews(tenantID));
        view.forward(request, response);
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
