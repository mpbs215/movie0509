package kosta.ridonbox.model.dto;

public class TheaterDTO {
	private String theaterName;
	private int theaterTotal;
	
	public String getTheaterName() {
		return theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}

	public int getTheaterTotal() {
		return theaterTotal;
	}

	public void setTheaterTotal(int theaterTotal) {
		this.theaterTotal = theaterTotal;
	}

	public TheaterDTO() {
		super();
	}

	public TheaterDTO(String theaterName, int theaterTotal) {
		super();
		this.theaterName = theaterName;
		this.theaterTotal = theaterTotal;
	}
	
}