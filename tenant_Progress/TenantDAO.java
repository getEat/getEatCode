package Controller;


import Model.Tenant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;


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
         conn = koneksi.open();
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
    
}
