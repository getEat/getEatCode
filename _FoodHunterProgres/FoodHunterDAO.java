package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import tools.koneksi;
import Model.FoodHunter;
/**
 *
 * @author Putra
 */
public class FoodHunterDAO {
    
    Connection conn = koneksi.open();
    ResultSet result;

    public FoodHunterDAO() {
        
    }
    
    public static void main(String[] args) throws SQLException {
        FoodHunterDAO test = new FoodHunterDAO();
        FoodHunter fh = new FoodHunter();
        
        test.add(fh);
    }
    
    public void add(FoodHunter fh) throws SQLException {
        Statement statement ;
        String sql = "insert into FOODHUNTER (nama, Email, SocialMedia) "
                + "values('" + fh.getNama()+ "','" + fh.getEmail() + "','" + fh.getSosialMedia()+ "')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
//        conn.commit();
        conn.close();
    }
    
     public void updateFoodHunter(FoodHunter fh, String email)throws SQLException {
            String sql = "update foodhunter set nama= '"+fh.getNama()+"',Email='"+fh.getEmail()+"',SocialMedia='"+fh.getSosialMedia()+"' where email='"+email+"'";
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
//            conn.commit();
            conn.close();
    }
    
    
    
}
