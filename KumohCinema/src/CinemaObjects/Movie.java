package CinemaObjects;

public class Movie {
	String movieTitle, country, info, bigImageUrl, smallImageUrl;
	int year, age;

	public Movie(String movieTitle, int year, String country, String info, String bigImageUrl, String smallImageUrl) {
		this.movieTitle = movieTitle;
		this.year = year;
		this.country = country;
		this.info = info;
		this.bigImageUrl = bigImageUrl;
		this.smallImageUrl = smallImageUrl;
		this.age = 0;
	}
	
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getBigImageUrl() {
		return bigImageUrl;
	}
	public void setBigImageUrl(String bigImageUrl) {
		this.bigImageUrl = bigImageUrl;
	}
	public String getSmallImageUrl() {
		return smallImageUrl;
	}
	public void setSmallImageUrl(String smallImageUrl) {
		this.smallImageUrl = smallImageUrl;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
