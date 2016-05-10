/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS-PC
 */
public class MemberDAO {
    private Connection connection;
    private final String addMember = "INSERT INTO MEMBER (idMember,username,password,status) VALUES (?,?,?,'AKTIF')";
    private final String changePassword = "UPDATE MEMBER SET Password = ? WHERE USERNAME ='username'";
    public MemberDAO (Connection connection) { 
        this.connection = connection;
    }
    
    public void addMember (Member member)  {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(addMember);
                statement.setString(1,member.getIdMember());
                statement.setString(2,member.getUserName());
                statement.setString(3,member.getPassword());
                statement.executeQuery();
                connection.commit();
            } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void changePassword (Member member)   {
            PreparedStatement statement;
            statement = null;            
            try {
                connection.setAutoCommit(false);
                statement = connection.prepareStatement(changePassword);
                statement.setString(1,member.getPassword());
                statement.executeQuery();
                connection.commit();
            } catch (SQLException ex) {
            Logger.getLogger(MemberDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}