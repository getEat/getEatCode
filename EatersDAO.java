package geteat;

/**
 *
 * @author Jonathan
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EatersDAO {

    private Connection connection;
    private final String addEaters = "INSERT INTO eaters (nama,alamat,email,foto) VALUES (?,?,?,?)";
    private final String addComment = "INSERT INTO comment (id_review, comment) VALUES (?,?)";
    private final String addReport = "INSERT INTO report (id_review) VALUES (?)";
    private final String editProfile = "UPDATE eaters SET nama=?,alamat=?,email=?,foto=? WHERE email=? ";

    public EatersDAO(Connection connection) {
        this.connection = connection;
    }

    public void addEaters(Eaters eaters) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(addEaters);
            statement.setString(1, eaters.getNama());
            statement.setString(2, eaters.getAlamat());
            statement.setString(3, eaters.getEmail());
            statement.setString(4, eaters.getFoto());
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

    public void shareReview() throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
//            statement=connection.prepareStatement();
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

    public void addComment(Review review) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(addComment);
            statement.setString(1, review.getIdReview());
            statement.setString(2, review.getComment());
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

    public void editProfile(String nama, String alamat, String email, String foto) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(editProfile);
            statement.setString(1, nama);
            statement.setString(2, alamat);
            statement.setString(3, email);
            statement.setString(4, foto);
            statement.setString(5, email);
            statement.executeUpdate();
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

    public void getDataTenant() throws Exception {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Tenant> ListDataTenant = new ArrayList<Tenant>();
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement("SELECT * FROM tenant");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Tenant tenant = new Tenant();
                tenant.setNama(resultSet.getString("nama"));
                tenant.setAlamatTempatMakan(resultSet.getString("alamatTempatmakan"));
                tenant.setDaftarReview(resultSet.getString("daftarReview"));
                tenant.setDaftarMenu(resultSet.getString("daftarMenu"));
                tenant.setProfile(resultSet.getString("profile"));
                tenant.setPromosi(resultSet.getString("promosi"));
                ListDataTenant.add(tenant);
            }
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ignore) {
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ignore) {
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ignore) {
                }
            }
        }
//        return ListDataTenant;
    }

    public void reportReview(Review review) throws Exception {
        PreparedStatement statement;
        statement = null;
        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(addReport);
            statement.setString(1, review.getIdReview());
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
