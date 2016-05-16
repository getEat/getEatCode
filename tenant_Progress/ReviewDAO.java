/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tommynmanoppo
 */
public class ReviewDAO {
    private Connection conn;
   
    public ReviewDAO(){
        conn = DbConnection.open();
    }
    
    public List<Review> getAllReviews(String tenantId) {
        List<Review> review = new ArrayList<Review>();
        try {
            PreparedStatement preparedStatement = conn.
                    prepareStatement("select * from review where idtenant=?");
            preparedStatement.setString(1, tenantId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Review rev = new Review();
                Tenant te = new Tenant();
                
                rev.setIdReview(rs.getString("idReview"));
                rev.setIdtenant(rs.getString("idtenant"));
                rev.setUseful(rs.getInt("useful"));
                rev.setFunny(rs.getInt("Funny"));
                rev.setComment(rs.getString("Comment"));
                rev.setStatus(rs.getString("Status"));
//                
                review.add(rev);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return review;
    }
}
