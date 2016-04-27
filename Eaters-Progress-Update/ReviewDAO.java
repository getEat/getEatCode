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
import java.util.logging.Level;
import java.util.logging.Logger;

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
