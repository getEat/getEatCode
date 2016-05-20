package Model;

/**
 *
 * @author ASUS-PC
 */
public class Member {

    private String idMember;
    private String userName;
    private String password;
    private String tipe;
    private String Status;

    
    public Member() {

    }

    public Member(String idMember, String userName, String password, String tipe, String Status) {
        this.idMember = idMember;
        this.userName = userName;
        this.password = password;
        this.tipe = tipe;
        this.Status = Status;
    }

    /**
     * @return the idMember
     */
    public String getIdMember() {
        return idMember;
    }

    /**
     * @param idMember the idMember to set
     */
    public void setIdMember(String idMember) {
        this.idMember = idMember;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the tipe
     */
    public String getTipe() {
        return tipe;
    }

    /**
     * @param tipe the tipe to set
     */
    public void setTipe(String tipe) {
        this.tipe = tipe;
    }

    /**
     * @return the Status
     */
    public String getStatus() {
        return Status;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(String Status) {
        this.Status = Status;
    }
}
