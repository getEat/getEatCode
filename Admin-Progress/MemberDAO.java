/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;
import Model.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS-PC
 */
public class MemberDAO {
    Connection conn = DatabaseConnection.getDBConnection();
    ResultSet result;

    public MemberDAO() {
    }
    
    public MemberDAO (Connection connection) { 
       
    }
        public static List<Member> listMemberAktif() throws SQLException {
        List<Member> ls = new LinkedList<>();
        
        Connection conn =DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String  sql1 = "SELECT * FROM MEMBER WHERE STATUS = 'AKTIF'";
        ResultSet res = statement.executeQuery(sql1);
        while (res.next()) {
            Member m = new Member();
            m.setIdMember(res.getString("idmember"));
            m.setUserName(res.getString("username"));
            m.setPassword(res.getString("password"));
            m.setTipe(res.getString("tipe"));
            m.setStatus(res.getString("status"));
            ls.add(m);
        }
        return ls;
    }
        
      public static List<Member> listMemberBlokir() throws SQLException {
        List<Member> ls = new LinkedList<>();
        
        Connection conn =DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String  sql1 = "SELECT * FROM MEMBER WHERE STATUS = 'BLOKIR'";
        ResultSet res = statement.executeQuery(sql1);
        while (res.next()) {
            Member m = new Member();
            m.setIdMember(res.getString("idmember"));
            m.setUserName(res.getString("username"));
            m.setPassword(res.getString("password"));
            m.setTipe(res.getString("tipe"));
            m.setStatus(res.getString("status"));
            ls.add(m);
        }
        return ls;
    }   
      
            public static List<Member> listMemberPending() throws SQLException {
        List<Member> ls = new LinkedList<>();
        
        Connection conn =DatabaseConnection.getDBConnection();
        ResultSet result;
        Statement statement = conn.createStatement();
        String  sql1 = "SELECT * FROM MEMBER WHERE STATUS = 'PENDING'";
        ResultSet res = statement.executeQuery(sql1);
        while (res.next()) {
            Member m = new Member();
            m.setIdMember(res.getString("idmember"));
            m.setUserName(res.getString("username"));
            m.setPassword(res.getString("password"));
            m.setTipe(res.getString("tipe"));
            m.setStatus(res.getString("status"));
            ls.add(m);
        }
        return ls;
    }   
        
   
        
   public void blokirMember (String id) throws SQLException {
        PreparedStatement statement;
             Member m = new Member();
            String sql ="UPDATE MEMBER SET STATUS = 'BLOKIR' WHERE idmember = '"+id+"'";
            statement = conn.prepareStatement(sql);
            statement.executeQuery();
            conn.commit();
   }
   
    public void unBlokirMember (String id) throws SQLException {
        PreparedStatement statement;
             Member m = new Member();
            String sql ="UPDATE MEMBER SET STATUS = 'AKTIF' WHERE idmember = '"+id+"'";
            statement = conn.prepareStatement(sql);
            statement.executeQuery();
            conn.commit();
   }
}