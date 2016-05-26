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
    private String reviewer;
    private String images;
    private String review;
    private String idTenant;
    private String namaTenant;
    private String city;
    private String Kategori;
    
 
    public Review() {
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
     * @return the Rating
     */
    public int getRating() {
        return Rating;
    }

    /**
     * @param Rating the Rating to set
     */
    public void setRating(int Rating) {
        this.Rating = Rating;
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

    /**
     * @return the ReportDetails
     */
    public String getReportDetails() {
        return ReportDetails;
    }

    /**
     * @param ReportDetails the ReportDetails to set
     */
    public void setReportDetails(String ReportDetails) {
        this.ReportDetails = ReportDetails;
    }

    /**
     * @return the reviewer
     */
    public String getReviewer() {
        return reviewer;
    }

    /**
     * @param reviewer the reviewer to set
     */
    public void setReviewer(String reviewer) {
        this.reviewer = reviewer;
    }

    /**
     * @return the images
     */
    public String getImages() {
        return images;
    }

    /**
     * @param images the images to set
     */
    public void setImages(String images) {
        this.images = images;
    }

    /**
     * @return the review
     */
    public String getReview() {
        return review;
    }

    /**
     * @param review the review to set
     */
    public void setReview(String review) {
        this.review = review;
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

    /**
     * @return the namaTenant
     */
    public String getNamaTenant() {
        return namaTenant;
    }

    /**
     * @param namaTenant the namaTenant to set
     */
    public void setNamaTenant(String namaTenant) {
        this.namaTenant = namaTenant;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the Kategori
     */
    public String getKategori() {
        return Kategori;
    }

    /**
     * @param Kategori the Kategori to set
     */
    public void setKategori(String Kategori) {
        this.Kategori = Kategori;
    }
    
    
}
