package Controller;



import Model.Review;
import Model.Tenant;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Mediatrix
 */
@WebServlet(urlPatterns = {"/foto"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class foto extends HttpServlet {
 private static final String SAVE_DIR = "reviewImage";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet foto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet foto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileNotFoundException {
         PrintWriter out = response.getWriter();
        String s = null;
ReviewDAO revDAO = new ReviewDAO();
       Tenant ten = new Tenant();
       Review rev = new Review();
         String cover = request.getServletContext().getRealPath("");
         String save = "C:\\Users\\ASUS-PC\\Desktop\\ProyekTeknologiInformasiGabung\\web\\"+ SAVE_DIR;
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
                        
                        rev.setImages((String)SAVE_DIR+"/"+filename);
                        String id = request.getSession().getAttribute("idreview").toString();
                        
                        out.println(rev.getImages());
                        out.println(id);
                        
                        try {
         revDAO.uploadfoto(rev,id);
         s="berhasil";
         
     } catch (SQLException ex) {
         Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
          s="gagal";
     }
request.setAttribute("s", s);  
RequestDispatcher view = request.getRequestDispatcher("View_MakeReview_FoodHunter.jsp");
view.forward(request, response); 
//                        JadwalFilm film = new JadwalFilm();
//                        film.setJudul(request.getSession().getAttribute("judulFilm").toString());
//                        film.setTanggal(request.getSession().getAttribute("tanggal").toString());
//                        film.setWaktu(request.getSession().getAttribute("waktu").toString());
//                        film.setHarga(Double.parseDouble(request.getSession().getAttribute("harga").toString()));
//                        film.setJumlahTempatDuduk(Integer.parseInt(request.getSession().getAttribute("jml").toString()));
//                        film.setRuang(request.getSession().getAttribute("ruang").toString());
//                        film.setFoto(SAVE_DIR + "/" + filename);
//    
//         film.foto(film);
//          out.print(film.getJudul());

//        request.setAttribute("message", "Upload has been done successfully!");
//        request.setAttribute("fileName", SAVE_DIR + "/" + fileName);
     
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
