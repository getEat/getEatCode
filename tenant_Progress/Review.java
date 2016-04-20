package Model;

public class Review {

    private String id_review;
    private String comment;
    private int useful;
    private int funny;
    private String status;
    /**
     * @return the id_review
     */
    public String getId_review() {
        return id_review;
    }

    /**
     * @param id_review the id_review to set
     */
    public void setId_review(String id_review) {
        this.id_review = id_review;
    }

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUseful() {
        return useful;
    }

    public void setUseful(int useful) {
        this.useful = useful;
    }

    public int getFunny() {
        return funny;
    }

    public void setFunny(int funny) {
        this.funny = funny;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
