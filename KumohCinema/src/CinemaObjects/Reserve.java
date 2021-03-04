package CinemaObjects;

public class Reserve {
	String date, region, seats, smallPoster;
	int totalPrice;
	
	public Reserve(String date, String region, String seats, int totalPrice, String smallPoster) {
		this.date = date;
		this.region = region;
		this.seats = seats;
		this.totalPrice = totalPrice;
		this.smallPoster = smallPoster;
	}
	
	public String getDate() {
		return date;
	}
	public String getRegion() {
		return region;
	}
	public String getSeats() {
		return seats;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public String getSmallPoster() {
		return smallPoster;
	}
}
