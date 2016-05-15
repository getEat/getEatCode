/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Jonathan
 */
public class ReviewDAO {
//     private Connection connection;

    Connection conn = Koneksi.koneksi.open();
    ResultSet result;

    public ReviewDAO() {

    }

    public void addUseful(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int useful = getUseful("1111") + 1;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set Useful=" + useful + " where idReview='1111'");
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void addFunny(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int funny = getFunny("1111") + 1;
        try {
            preparedstatement = conn.prepareStatement("update REVIEW set Funny=" + funny + " where idReview='1111'");
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void addRating(Review review) throws SQLException {
        PreparedStatement preparedstatement;
        int rating = getRating("1111") + 1;
        try {
            if(rating > 5){
                conn.close();
            }
            preparedstatement = conn.prepareStatement("update REVIEW set Rating=" + rating + " where idReview='1111'");
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
            preparedstatement = conn.prepareStatement("update REVIEW set Comment=? where idReview=1111");
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
            preparedstatement = conn.prepareStatement("update REVIEW set ReportDetails=?,Status=? where idReview=1111");
            preparedstatement.setString(1, review.getReportDetails());
            preparedstatement.setString(2, review.getStatus());
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReviewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
