/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ASUS-PC
 */
public class Tenant extends Member {
    private String Namatring; 
    private String alamatTempaMakan;
    private String daftarReview;
    private String profile;
    private String promosi;

    /**
     * @return the Namatring
     */
    public String getNamatring() {
        return Namatring;
    }

    /**
     * @param Namatring the Namatring to set
     */
    public void setNamatring(String Namatring) {
        this.Namatring = Namatring;
    }

    /**
     * @return the alamatTempaMakan
     */
    public String getAlamatTempaMakan() {
        return alamatTempaMakan;
    }

    /**
     * @param alamatTempaMakan the alamatTempaMakan to set
     */
    public void setAlamatTempaMakan(String alamatTempaMakan) {
        this.alamatTempaMakan = alamatTempaMakan;
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
    
}
