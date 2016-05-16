

public class Tenant {

    private String idTenant;
    private String nama;
    private String username;
    private String password;
    private String alamatTempatMakan;
    private String owner;
    
    public Tenant(){
        
    }

    public String getIdTenant() {
        return idTenant;
    }

    public void setIdTenant(String idTenant) {
        this.idTenant = idTenant;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAlamatTempatMakan() {
        return alamatTempatMakan;
    }

    public void setAlamatTempatMakan(String alamatTempatMakan) {
        this.alamatTempatMakan = alamatTempatMakan;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }
    
}
