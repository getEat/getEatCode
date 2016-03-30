package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author GetEat!
 */
public class DbConnection {
    private static String Username1= "root";
    private static String Password1= "";
    private static String Conn_String1= "jdbc:mysql://localhost:3306/xxx";

    public DbConnection(){
        try {
            connection = DriverManager.getConnection(Conn_String1, Username1, Password1);
            System.out.println("koneksi berhasil");
        } catch (Exception ex) {
            System.out.println("message: " + ex.getMessage());
        }
    }
    
    public boolean isConnected() {
        if (getConnection() != null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean getClosed() {
        if (isConnected()) {
            try {
                getConnection().close();
                setConnection(null);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            return true;
        } else {
            return false;
        }
    }
    
    public static String getUsername1() {
        return Username1;
    }

    public static void setUsername1(String aUsername1) {
        Username1 = aUsername1;
    }

    public static String getPassword1() {
        return Password1;
    }

    public static void setPassword1(String aPassword1) {
        Password1 = aPassword1;
    }

    public static String getConn_String1() {
        return Conn_String1;
    }

    public static void setConn_String1(String aConn_String1) {
        Conn_String1 = aConn_String1;
    }
    private Connection connection = null;

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
    
}
