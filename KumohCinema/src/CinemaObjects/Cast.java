package CinemaObjects;

public class Cast {
	int castID;
	String name;
	String role;
	String profileImage;
	String movieTitle;
	
	
	public Cast(int castID, String name, String role, String profileImage, String movieTitle) {
		this.castID = castID;
		this.name = name;
		this.role = role;
		this.profileImage = profileImage;
		this.movieTitle = movieTitle;
	}
	
	
	public int getCastID() {
		return castID;
	}
	public void setCastID(int castID) {
		this.castID = castID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	
}
