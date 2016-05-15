package DAO;

/**
 *
 * @author Jonathan
 */
import Koneksi.DBConnection;
import Model.Eaters;
import Model.Review;
import Model.Member;
//import Model.Tenant;
//import geteat.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EatersDAO {

    private Connection connection;
    private final String addEaters = "INSERT INTO eaters (Nama,alamat,email) VALUES (?,?,?)";
    private final String addMember = "INSERT INTO member (idMember, userName, password, tipe, Status) VALUES (?, ?, ?,'Eaters','Aktif')";
    private final String addComment = "INSERT INTO comment (id_review, comment) VALUES (?,?)";
    private final String addReport = "INSERT INTO report (id_review) VALUES (?)";
    private final String editProfile = "UPDATE eaters SET Nama=?,alamat=?,email=? WHERE nama=jonathan";
    String kode = "EA";
    Connection conn = Koneksi.koneksi.open();
    ResultSet result;

    public EatersDAO() {
    }

    public void addEaters(Eaters eaters) throws Exception {
        String sql = "insert into EATERS (Nama, alamat, email) "
                + "values('" + eaters.getNama() + "','" + eaters.getAlamat() + "','" + eaters.getEmail() + "')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
        conn.close();
    }

    public static String gen() {
        Random r = new Random(System.currentTimeMillis());
        return "E" + String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }

    public void editProfile(Eaters eaters) {
        PreparedStatement preparedstatement;
        try {
            preparedstatement = conn.prepareStatement("update EATERS set Nama=?, alamat=?, email=? where Nama='tom'");
            preparedstatement.setString(1, eaters.getNama());
            preparedstatement.setString(2, eaters.getAlamat());
            preparedstatement.setString(3, eaters.getEmail());
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(EatersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void reportReview(Review review) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(addReport);
            statement.setString(1, review.getIdReview());
            statement.executeQuery();
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }

    }
}
