/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.DatabaseConnection;
import Model.Foodhunter;
import Model.Member;
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
    
    	public void addEaters(Member member) throws Exception {
        String sql = "insert into member (idMember, userName, password, tipe, Status)"
                + "values('" + gen() + "','" + member.getUserName() + "','" + member.getPassword() + "','EATERS','AKTIF')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
        conn.close();
    }

    public static String gen() {
        Random r = new Random(System.currentTimeMillis());
        return "E" + String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }
    
    public void editProfile(Member member) {
        PreparedStatement preparedstatement;
        try {
            preparedstatement = conn.prepareStatement("update member set userName=?, password=? where idMember=?");
            preparedstatement.setString(1, member.getUserName());
            preparedstatement.setString(2, member.getPassword());
            preparedstatement.setString(3, member.getIdMember());
            preparedstatement.executeUpdate();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(EatersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void updateFoodHunter(Member m, String nama)throws SQLException {
            String sql = "update member set username= '"+m.getUserName()+"', password= '"+m.getPassword()+"' where username='"+nama+"'";
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
//            conn.commit();
            conn.close(); 
    }
    
    public void add(Member member, String id) throws SQLException {
        Statement statement ;
        String sql = "insert into member (idMember,userName,password,tipe,Status) "
                + "values('" +id + "','" + member.getUserName() + "','" +member.getPassword()+ "','FOODHUNTER','PENDING')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
//        conn.commit();
        conn.close();
    }

}