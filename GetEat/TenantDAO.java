package Controller;


import Connection.DatabaseConnection;
import Model.Review;
import Model.Tenant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


/**
 *
 * @author GetEat!
 */
public class TenantDAO {
//    private final String addTenant = "INSERT INTO tenant (nama,alamat,dReview,dMenu,profile,promosi) VALUES (?,?,?,?,?,?)";
//    private final String showDataTenant = "SELECT Nama, alamatTempatMakan, username, password, Owner FROM tenant ";
////            + "where username='"+"'";

    private Connection conn;
   
    
    public TenantDAO() {
         conn = DatabaseConnection.getDBConnection();
    }

    public void updateTenant(Tenant tenant){
        try{
            PreparedStatement preparedStatement = conn.prepareStatement("update tenant set Nama=?, alamatTempatMakan=?, username=?, password=?, Owner=?" +
                            "where tenantid=?");
            // Parameters start with 1
            preparedStatement.setString(1, tenant.getNama());
            preparedStatement.setString(2, tenant.getAlamatTempatMakan());
            preparedStatement.setString(3, tenant.getUserName());
            preparedStatement.setString(4, tenant.getPassword());
            preparedStatement.setString(5, tenant.getIdTenant());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        }
    

    public List<Tenant> getAllTenants() {
        List<Tenant> dataTenant = new ArrayList<Tenant>();
        try {
            Statement statement1 = conn.createStatement();
            ResultSet resultSet = statement1.executeQuery("SELECT * FROM tenant");

            while (resultSet.next()) {
                Tenant ten = new Tenant();
                ten.setIdTenant(resultSet.getString("idtenant"));
                ten.setNama(resultSet.getString("Nama"));
                ten.setAlamatTempatMakan(resultSet.getString("alamatTempatMakan"));
                ten.setUserName(resultSet.getString("username"));
                ten.setPassword(resultSet.getString("password"));
                ten.setOwner(resultSet.getString("Owner"));
//                
                dataTenant.add(ten);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dataTenant;
    }
    
    public Tenant getTenantById(String tenantId) {
        Tenant tenant = new Tenant();
        try{ 
        PreparedStatement preparedStatement = conn.
                    prepareStatement("select * from tenant where idtenant=?");
            preparedStatement.setString(1, tenantId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                tenant.setIdTenant(rs.getString("idtenant"));
                tenant.setNama(rs.getString("Nama"));
                tenant.setAlamatTempatMakan(rs.getString("alamatTempatMakan"));
                tenant.setUserName(rs.getString("username"));
                tenant.setPassword(rs.getString("password"));
                tenant.setOwner(rs.getString("Owner"));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tenant;
    }
    
    public void addTenant(Tenant tnt)throws SQLException {
        Statement statement ;
        String tent = "insert into tenant (IDTENANT,NAMATENANT, ALAMATTEMPATMAKAN, OWNER, PROMOSI, USERNAME,PASSWORD) "
                + "values('" +gen()+ "','" + tnt.getNama()+ "','" +tnt.getAlamatTempatMakan()+ "','" +tnt.getOwner()+ "','null','null','null')";
        Statement stat = conn.createStatement();
        stat.executeUpdate(tent);
//        conn.commit();
        conn.close();
    }
    
    public static String gen() {
    Random r = new Random( System.currentTimeMillis() );
    return "T"+String.valueOf((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
    }
}
