/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;

import Model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS-PC
 */
public class ReviewDAO {

    Connection conn = DatabaseConnection.getDBConnection();
    ResultSet result;

    public static void main(String[] args) throws SQLException {
        Tenant tn = new Tenant();
        Review rv = new Review();
        ReviewDAO rvDAO = new ReviewDAO();
        TenantDAO tnDAO = new TenantDAO();

        tn.setNama("test");
        tn.setAlamatTempatMakan("test");
        tn.setOwner("test");
        rv.setReview("test");
        rv.setReviewer("test");
        String id = rvDAO.gen();
        rvDAO.addReview(tn, rv, id);
        tnDAO.addTenant(tn);
//        rv.setImages("test");
//        rvDAO.uploadfoto(rv, "R15371");

    }

    public static List<Review> listReview() throws SQLException {
        List<Review> ls = new LinkedList<>();

        Connection conn = DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String sql1 = "SELECT * FROM REVIEW";
        ResultSet res = statement.executeQuery(sql1);
        while (res.next()) {
            Review r = new Review();
            r.setIdReview(res.getString("IDREVIEW"));
            r.setUseful(Integer.parseInt(res.getString("USEFUL")));
            r.setFunny(Integer.parseInt(res.getString("FUNNY")));
            r.setRating(Integer.parseInt(res.getString("RATING")));
            r.setComment(res.getString("COMMENTS"));
            r.setStatus(res.getString("STATUS"));
            r.setReportDetails(res.getString("REPORTDETAILS"));
            ls.add(r);
        }
        return ls;
    }

    public static List<Review> listReport() throws SQLException {
        List<Review> ls = new LinkedList<>();

        Connection conn = DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String sql1 = "SELECT * FROM REVIEW WHERE STATUS = 'REPORTED'";
        ResultSet res = statement.executeQuery(sql1);
        while (res.next()) {
            Review r = new Review();
            r.setIdReview(res.getString("idreview"));
            r.setUseful(res.getInt("useful"));
            r.setFunny(res.getInt("funny"));
            r.setRating(res.getInt("rating"));
            r.setComment(res.getString("comments"));
            r.setStatus(res.getString("status"));
            r.setReportDetails(res.getString("reportdetails"));
            ls.add(r);
        }
        return ls;
    }

    public void hapusReview(String id) throws SQLException {
        PreparedStatement statement;
        Review r = new Review();
        String sql = "DELETE FROM REVIEW WHERE idReview = '" + id + "'";
        statement = conn.prepareStatement(sql);
        statement.executeQuery();
        conn.commit();

    }

    public void addUseful(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int useful = getUseful(review.getIdReview()) + 1;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set Useful=" + useful + " where idReview='"+review.getIdReview()+"'");
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void addFunny(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int funny = getFunny(review.getIdReview()) + 1;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set Funny=" + funny + " where idReview='"+review.getIdReview()+"'");
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void addRating(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int rating = getRating(review.getIdReview()) + 1;
        try {
            if (rating >= 5) {
                conn.close();
            }
            preparedstatement = conn.prepareStatement("update REVIEW set Rating=" + rating + " where idReview='"+review.getIdReview()+"'");
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public int getUseful(String id) throws SQLException {
        PreparedStatement preparedstatement;
        Statement stmt = conn.createStatement();
        int useful = 0;
        try {
            String sql = "SELECT useful FROM review WHERE idReview ='" + id + "'";
            ResultSet rset = stmt.executeQuery(sql);
            while (rset.next()) {
                useful = Integer.parseInt(rset.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return useful;
    }

    public int getFunny(String id) throws SQLException {
        PreparedStatement preparedstatement;
        Statement stmt = conn.createStatement();
        int funny = 0;
        try {
            String sql = "SELECT funny FROM review WHERE idReview ='" + id + "'";
            ResultSet rset = stmt.executeQuery(sql);
            while (rset.next()) {
                funny = Integer.parseInt(rset.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return funny;
    }

    public int getRating(String id) throws SQLException {
        PreparedStatement preparedstatement;
        Statement stmt = conn.createStatement();
        int rating = 0;
        try {
            String sql = "SELECT rating FROM review WHERE idReview ='" + id + "'";
            ResultSet rset = stmt.executeQuery(sql);
            while (rset.next()) {
                rating = Integer.parseInt(rset.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rating;
    }

    public void addComment(Review review) {
        PreparedStatement preparedstatement;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set COMMENTS=? where idReview='"+review.getIdReview()+"'");
            preparedstatement.setString(1, review.getComment());
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void Report(Review review) {
        PreparedStatement preparedstatement;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set STATUS=?, REPORTDETAILS=? where idReview='"+review.getIdReview()+"'");
            preparedstatement.setString(1, review.getStatus());
            preparedstatement.setString(2, review.getReportDetails());
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addReview(Tenant tnt, Review rw, String id) throws SQLException {
        Statement statement;
        String rev = "insert into review (idReview, Comments, reviewer, useful, funny,rating,status, NamaTenant,image) "
                + "values('" + id + "','" + rw.getReview() + "','" + rw.getReviewer() + "',0,0,0,'unreported','" + tnt.getNama() + "','null')";

        Statement stat = conn.createStatement();
        stat.executeUpdate(rev);
        conn.close();
    }

    public void uploadfoto(Review rev, String id) throws SQLException {
        String sql = "update review set Image= '" + rev.getImages() + "' where idReview='" + id + "'";
        Statement stmt = conn.createStatement();
        stmt.executeUpdate(sql);
        conn.close();
    }

    public static String gen() {
        Random r = new Random(System.currentTimeMillis());
        return "R" + String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }
}
