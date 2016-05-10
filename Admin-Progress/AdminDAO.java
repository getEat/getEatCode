/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Member;
import Model.Review;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS-PC
 */
public class AdminDAO {

    private final Connection connection;
    private final String listMember = "select * from member";
    private final String listReview = "select * from review";
    private final String hapusReview = "delete from table review where idreview = ?";
    private final String nonaktifkanUser = "UPDATE MEMBER SET STATUS = 'nonaktif' WHERE USERNAME = '?'";

    public AdminDAO(Connection connection) {
        this.connection = connection;
    }
    public void listMember (Member member)  {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(listMember);
                statement.setString(1,member.getIdMember());
                statement.setString(2,member.getUserName());
                statement.setString(3,member.getPassword());
                statement.setString(4, member.getStatus());
                statement.setString(5, member.getTipe());
                statement.executeQuery();
                connection.commit();
            } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void listReview (Review review)  {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(listReview) ;
                statement.setString(1,review.getIdReview());
                statement.setString(2,review.getComment());
                statement.setString(3,review.getStatus());
                 statement.setInt(4,review.getFunny());
                 statement.setInt(5, review.getUseful());
                statement.executeQuery();
                connection.commit();
            } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void hapusReview (Review review)  {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(hapusReview) ;
                statement.setString(1,review.getIdReview());
            } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void nonaktifkanUser (Member member)  {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(nonaktifkanUser);
                statement.setString(1,member.getUserName());
                statement.executeQuery();
                connection.commit();
            } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
