package Model;

/**
 *
 * @author Jonathan
 */
public class Eaters extends Member {

    private String Nama;
    private String alamat;
    private String email;
    private Member m;

    public Eaters() {

    }

    public Eaters(Member m, String Nama, String alamat, String email) {
        this.m = m;
        this.Nama = Nama;
        this.alamat = alamat;
        this.email = email;
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
     * @return the alamat
     */
    public String getAlamat() {
        return alamat;
    }

    /**
     * @param alamat the alamat to set
     */
    public void setAlamat(String alamat) {
        this.alamat = alamat;
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
     * @return the m
     */
    public Member getM() {
        return m;
    }

    /**
     * @param m the m to set
     */
    public void setM(Member m) {
        this.m = m;
    }

}
