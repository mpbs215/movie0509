package kosta.ridonbox.model.dto;

public class ReservationDTO {

	private String revNum;			// ���Ź�ȣ
	private String memberId;		// ȸ�����̵�
	private String movieNum;		// ��ȭ��ȣ
	private String theaterName;		// �󿵰��̸�
	private String screenNum;		// �󿵹�ȣ
	private int revPep;				// ���ż�
	
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
