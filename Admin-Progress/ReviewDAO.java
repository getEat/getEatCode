/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;
import Model.Member;
import Model.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author ASUS-PC
 */
public class ReviewDAO {

    Connection conn = DatabaseConnection.getDBConnection();
    ResultSet result;

    public static List<Review> listReview() throws SQLException {
        List<Review> ls = new LinkedList<>();

        Connection conn = DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String sql1 = "SELECT * FROM REVIEW";
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
}
