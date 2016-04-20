/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;


/**
 *
 * @author Windows 8
 */
public class koneksi {

    public static Connection open() {
        Connection con = null;
        
        String url = "jdbc:mysql://localhost:3306/geteat!";
        String username = "root";
        String password = "";
      
        
        
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Koneksi OK");
        } catch (Exception e) {
            System.out.println("error: " + e.getMessage());
        }
        return con;
    }


public static void main(String[] args) throws SQLException {
        koneksi.open();
    }
}
