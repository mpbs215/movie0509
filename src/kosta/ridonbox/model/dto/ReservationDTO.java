package kosta.ridonbox.model.dto;

public class ReservationDTO {

	private String revNum;			// 예매번호
	private String memberId;		// 회원아이디
	private String movieNum;		// 영화번호
	private String theaterName;		// 상영관이름
	private String screenNum;		// 상영번호
	private int revPep;				// 예매수
	
	public ReservationDTO() {}

	public ReservationDTO(String revNum, String memberId, String movieNum, String theaterName, String screenNum,
			int revPep) {
		this(memberId, movieNum, theaterName, screenNum, revPep);
		this.revNum = revNum;
	}
	public ReservationDTO( String memberId, String movieNum, String theaterName, String screenNum,
			int revPep) {
		super();
		this.memberId = memberId;
		this.movieNum = movieNum;
		this.theaterName = theaterName;
		this.screenNum = screenNum;
		this.revPep = revPep;
	}

	public String getRevNum() {
		return revNum;
	}

	public void setRevNum(String revNum) {
		this.revNum = revNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMovieNum() {
		return movieNum;
	}

	public void setMovieNum(String movieNum) {
		this.movieNum = movieNum;
	}

	public String getTheaterName() {
		return theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}

	public String getScreenNum() {
		return screenNum;
	}

	public void setScreenNum(String screenNum) {
		this.screenNum = screenNum;
	}

	public int getRevPep() {
		return revPep;
	}

	public void setRevPep(int revPep) {
		this.revPep = revPep;
	}
}
