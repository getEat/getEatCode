/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Model.Eaters;
import Model.Tenant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author GetEat!
 */
public class TenantDAO {
    private final String addTenant = "INSERT INTO tenant (nama,alamat,dReview,dMenu,profile,promosi) VALUES (?,?,?,?,?,?)";
    private Connection connection;
    
    public void addTenant(Tenant tenant) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(addTenant);
            statement.setString(1, tenant.getNama());
            statement.setString(2, tenant.getAlamatTempatMakan());
            statement.setString(3, tenant.getDaftarReview());
            statement.setString(4, tenant.getDaftarMenu());
            statement.setString(5, tenant.getProfile());
            statement.setString(6, tenant.getPromosi());
            statement.executeQuery();
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
            }
            throw new Exception(e.getMessage());
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                }
            }
        }
    }
    
    
}
