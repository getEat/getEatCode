/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;


import Model.Review;
import Model.Tenant;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List; 
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)   // 50MB
/**
 *
 * @author Putra
 */
public class Upload extends HttpServlet {
 private static final String SAVE_DIR = "img";
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
        PrintWriter out = response.getWriter();
   
    String s = null;
ReviewDAO revDAO = new ReviewDAO();
       Tenant ten = new Tenant();
       Review rev = new Review();
         String cover = request.getServletContext().getRealPath("");
         String save = "C:\\Users\\Putra\\Documents\\NetBeansProjects\\Putra\\GetEat\\web\\"+ SAVE_DIR;
                        String filename = null;
                        File file = new File (save);
                        if (!file.exists())
                        {
                            file.mkdir();
                        }
                        for (Part part : request.getParts())
                        {
                            filename = getSubmittedFileName(part);
                            part.write(save + File.separator + filename);
                        }
 
                        rev.setImages(SAVE_DIR + "/" + filename);
                        
     try {
         revDAO.uploadfoto(rev, request.getSession().getAttribute("idreview").toString());
         s="berhasil";
     } catch (SQLException ex) {
         Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
          s="gagal";
     }
request.setAttribute("s", s);  
RequestDispatcher view = request.getRequestDispatcher("View_MakeReview_FoodHunter.jsp");
view.forward(request, response); 
	  
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
  private static String getSubmittedFileName(Part part) {
                String contentDisp = part.getHeader("content-disposition");
                String [] items = contentDisp.split(";");
                for (String s : items)
                {
                    if (s.trim().startsWith("filename"))
                    {
                        return s.substring(s.indexOf("=")+ 2, s.length()-1);
                    }
                }
                return "";
            }
}
