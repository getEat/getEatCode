package Model;

public class Eaters extends Member{

    private String Nama;
    private String alamat;
    private String email;
    private String Foto;
    private Member m = new  Member();
    
    public Eaters(){
        
    }
    
    public Eaters(Member m, String nm, String almt, String emil, String ft){
    this.m=m;
    Nama = nm;
    alamat = almt;
    email = emil;
    Foto = ft;
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
     * @return the Foto
     */
    public String getFoto() {
        return Foto;
    }

    /**
     * @param Foto the Foto to set
     */
    public void setFoto(String Foto) {
        this.Foto = Foto;
    }

    public Member getM() {
        return m;
    }

    public void setM(Member m) {
        this.m = m;
    }

}
