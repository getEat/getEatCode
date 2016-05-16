package Model;

/**
 *
 * @author Jonathan
 */
public class Review {

    private String idReview;
    private int useful;
    private int Funny;
    private int Rating;
    private String Comment;
    private String Status;
    private String ReportDetails;

    public int getRating() {
        return Rating;
    }

    public Review(String idReview, int useful, int Funny, int Rating, String Comment, String Status, String ReportDetails) {
        this.idReview = idReview;
        this.useful = useful;
        this.Funny = Funny;
        this.Rating = Rating;
        this.Comment = Comment;
        this.Status = Status;
        this.ReportDetails = ReportDetails;
    }

    public void setRating(int Rating) {
        this.Rating = Rating;
    }

    public String getReportDetails() {
        return ReportDetails;
    }

    public void setReportDetails(String ReportDetails) {
        this.ReportDetails = ReportDetails;
    }
    

    public Review() {

    }



    /**
     * @return the idReview
     */
    public String getIdReview() {
        return idReview;
    }

    /**
     * @param idReview the idReview to set
     */
    public void setIdReview(String idReview) {
        this.idReview = idReview;
    }

    /**
     * @return the useful
     */
    public int getUseful() {
        return useful;
    }

    /**
     * @param useful the useful to set
     */
    public void setUseful(int useful) {
        this.useful = useful;
    }

    /**
     * @return the Funny
     */
    public int getFunny() {
        return Funny;
    }

    /**
     * @param Funny the Funny to set
     */
    public void setFunny(int Funny) {
        this.Funny = Funny;
    }

    /**
     * @return the Comment
     */
    public String getComment() {
        return Comment;
    }

    /**
     * @param Comment the Comment to set
     */
    public void setComment(String Comment) {
        this.Comment = Comment;
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
