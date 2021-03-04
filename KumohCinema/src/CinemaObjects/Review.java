package CinemaObjects;

public class Review {
	String movieTitle, writer, content;
	
	public Review(String movieTitle, String writer, String content) {
		this.movieTitle = movieTitle;
		this.writer = writer;
		this.content = content;
	}

	public String getMovieTitle() {
		return movieTitle;
	}
	public String getWriter() {
		return writer;
	}
	public String getContent() {
		return content;
	}
}
