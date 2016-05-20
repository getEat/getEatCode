package Model;

public class Tenant extends Member{

    private String Nama;
    private String alamatTempatMakan;
    private String daftarReview;
    private String daftarMenu;
    private String profile;
    private String promosi;
    private String owner;
    private String idTenant;

    private Member t = new Member();
    
    public Tenant(){
        
    }
    
    public Tenant(Member t, String nm, String alamt, String dReview, String dMenu, String pr, String prom){
        this.t = t;
        Nama = nm;
        alamatTempatMakan = alamt;
        daftarReview = dReview;
        daftarMenu = dMenu;
        profile = pr;
        promosi = prom;
        
    }
    
    /**
     * @return the Nama
     */
    public String getNama() {
        return Nama;
    }

    /**
     * @param Nama the Nama to set
     */
    public void setNama(String Nama) {
        this.Nama = Nama;
    }

    /**
     * @return the alamatTempatMakan
     */
    public String getAlamatTempatMakan() {
        return alamatTempatMakan;
    }

    /**
     * @param alamatTempatMakan the alamatTempatMakan to set
     */
    public void setAlamatTempatMakan(String alamatTempatMakan) {
        this.alamatTempatMakan = alamatTempatMakan;
    }

    /**
     * @return the daftarReview
     */
    public String getDaftarReview() {
        return daftarReview;
    }

    /**
     * @param daftarReview the daftarReview to set
     */
    public void setDaftarReview(String daftarReview) {
        this.daftarReview = daftarReview;
    }

    /**
     * @return the daftarMenu
     */
    public String getDaftarMenu() {
        return daftarMenu;
    }

    /**
     * @param daftarMenu the daftarMenu to set
     */
    public void setDaftarMenu(String daftarMenu) {
        this.daftarMenu = daftarMenu;
    }

    /**
     * @return the profile
     */
    public String getProfile() {
        return profile;
    }

    /**
     * @param profile the profile to set
     */
    public void setProfile(String profile) {
        this.profile = profile;
    }

    /**
     * @return the promosi
     */
    public String getPromosi() {
        return promosi;
    }

    /**
     * @param promosi the promosi to set
     */
    public void setPromosi(String promosi) {
        this.promosi = promosi;
    }

    public Member getT() {
        return t;
    }

    public void setT(Member t) {
        this.t = t;
    }

    /**
     * @return the owner
     */
    public String getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(String owner) {
        this.owner = owner;
    }

    /**
     * @return the idTenant
     */
    public String getIdTenant() {
        return idTenant;
    }

    /**
     * @param idTenant the idTenant to set
     */
    public void setIdTenant(String idTenant) {
        this.idTenant = idTenant;
    }
}
