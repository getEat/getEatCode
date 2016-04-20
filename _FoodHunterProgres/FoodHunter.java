/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

/**
 *
 * @author Putra
 */
public class FoodHunter {
    private String nama;
    private String email;
    private String SosialMedia;

    public FoodHunter() {
    }

    public FoodHunter(String nama, String email, String SosialMedia) {
        this.nama = nama;
        this.email = email;
        this.SosialMedia = SosialMedia;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @param nama the nama to set
     */
    public void setNama(String nama) {
        this.nama = nama;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the SosialMedia
     */
    public String getSosialMedia() {
        return SosialMedia;
    }

    /**
     * @param SosialMedia the SosialMedia to set
     */
    public void setSosialMedia(String SosialMedia) {
        this.SosialMedia = SosialMedia;
    }
}
