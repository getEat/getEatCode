package Connection;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.pool.OracleDataSource;

public class DatabaseConnection {
//    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
//    String userid = "mhs135314011";
//    String password = "mhs135314011";
//    Connection conn;
    
    public DatabaseConnection (){
         
    }
    
    public static Connection getDBConnection(){
        Connection conn = null;
        try {
            OracleDataSource ds;
            ds = new OracleDataSource();
            ds.setURL("jdbc:oracle:thin:@localhost:1521:xe");
            conn = ds.getConnection("HR","HR");
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection .class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
    public static void main(String[] args) throws SQLException {
       DatabaseConnection  koneksi=new DatabaseConnection ();
        koneksi.getDBConnection();
    }
}
