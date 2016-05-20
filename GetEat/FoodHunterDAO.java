package Controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DatabaseConnection;
import Model.*;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Putra
 */
public class FoodHunterDAO {
    
    Connection conn = DatabaseConnection.getDBConnection();
    ResultSet result;

    public FoodHunterDAO() {
        
    }
    
    public static void main(String[] args) throws SQLException {
        FoodHunterDAO test = new FoodHunterDAO();
        Foodhunter fh = new Foodhunter();
        
//        test.add(fh);
    }
    
    public void add(Foodhunter fh,String id) throws SQLException {
        Statement statement ;
        String sql = "insert into FOODHUNTER ( nama, Email, SocialMedia, idMember) "
                + "values('" + fh.getNama()+ "','" + fh.getEmail() + "','" + fh.getSosialMedia()+ "','" +id+ "')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(sql);
//        conn.commit();
        conn.close();
    }
    
     public void updateFoodHunter(Foodhunter fh, String nama)throws SQLException {
            String sql = "update foodhunter set nama= '"+fh.getNama()+"',Email='"+fh.getEmail()+"',SocialMedia='"+fh.getSosialMedia()+"' where nama='"+nama+"'";
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
//            conn.commit();
            conn.close(); 
    }
    
     public static List<Income> getIncome(String bulan, String tahun, String user) throws SQLException{
         List<Income> ls = new LinkedList<>();
         Connection conn =DatabaseConnection.getDBConnection();
            ResultSet result;
            Statement statement = conn.createStatement();
                String que1 = "SELECT *FROM income WHERE TO_char(dateincome, 'MM-YYYY')= '"+bulan+"-"+tahun+"' and user_name='"+user+"' ORDER BY dateincome DESC";
                ResultSet res = statement.executeQuery(que1);
                while (res.next()) {
                Income in = new Income();
                in.setInformation(res.getString("Information"));
                in.setIncome(Double.parseDouble(res.getString("Income")));
                in.setDate(res.getString("dateincome"));
                ls.add(in);
                }
         return ls;
     }
    public static String gen() {
    Random r = new Random( System.currentTimeMillis() );
    return "F"+String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }
    
}
