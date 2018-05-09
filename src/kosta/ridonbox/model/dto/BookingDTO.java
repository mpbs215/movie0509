package kosta.ridonbox.model.dto;

public class BookingDTO {
	private String movieImgPath;
	private String bookingNum;
	private String movieName;
	private String screenDate;
	private String screenTime;
	private String AuditoriumNo;
	
	public BookingDTO() {
	}

	public BookingDTO(String movieImgPath, String bookingNum, String movieName, String screenDate, String screenTime,
			String auditoriumNo) {
		this.movieImgPath = movieImgPath;
		this.bookingNum = bookingNum;
		this.movieName = movieName;
		this.screenDate = screenDate;
		this.screenTime = screenTime;
		AuditoriumNo = auditoriumNo;
	}

	

	public String getMovieImgPath() {
		return movieImgPath;
	}

	public void setMovieImgPath(String movieImgPath) {
		this.movieImgPath = movieImgPath;
	}

	public String getBookingNum() {
		return bookingNum;
	}

	public void setBookingNum(String bookingNum) {
		this.bookingNum = bookingNum;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getScreenDate() {
		return screenDate;
	}

	public void setScreenDate(String screenDate) {
		this.screenDate = screenDate;
	}

	public String getScreenTime() {
		return screenTime;
	}

	public void setScreenTime(String screenTime) {
		this.screenTime = screenTime;
	}

	public String getAuditoriumNo() {
		return AuditoriumNo;
	}

	public void setAuditoriumNo(String auditoriumNo) {
		AuditoriumNo = auditoriumNo;
	}
}
