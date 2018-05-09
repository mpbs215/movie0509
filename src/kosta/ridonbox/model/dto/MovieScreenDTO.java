package kosta.ridonbox.model.dto;

public class MovieScreenDTO {
	private String movieNum;		//pk
	private String movieTitle;		//제목
	private String movieEtitle;//영어제목
	private String movieDir;	//감독
	private String movieAct;		//배우
	private String movieDate;	//개봉일
	private int movieRat;				//평점
	private String moviePath;			//이미지경로
	private String movieYoutube;		//유튜브경로
	private int movieState;				//영화 상태(상영중 1, 상영종료 0)
	private String screenNum; //상영번호
	private String theaterName; //상영관이름
	private String screenDate; //상영날짜 및 시간
	private int revTotal; //총예매수
	public String getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(String movieNum) {
		this.movieNum = movieNum;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getMovieEtitle() {
		return movieEtitle;
	}
	public void setMovieEtitle(String movieEtitle) {
		this.movieEtitle = movieEtitle;
	}
	public String getMovieDir() {
		return movieDir;
	}
	public void setMovieDir(String movieDir) {
		this.movieDir = movieDir;
	}
	public String getMovieAct() {
		return movieAct;
	}
	public void setMovieAct(String movieAct) {
		this.movieAct = movieAct;
	}
	public String getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}
	public int getMovieRat() {
		return movieRat;
	}
	public void setMovieRat(int movieRat) {
		this.movieRat = movieRat;
	}
	public String getMoviePath() {
		return moviePath;
	}
	public void setMoviePath(String moviePath) {
		this.moviePath = moviePath;
	}
	public String getMovieYoutube() {
		return movieYoutube;
	}
	public void setMovieYoutube(String movieYoutube) {
		this.movieYoutube = movieYoutube;
	}
	public int getMovieState() {
		return movieState;
	}
	public void setMovieState(int movieState) {
		this.movieState = movieState;
	}
	public String getScreenNum() {
		return screenNum;
	}
	public void setScreenNum(String screenNum) {
		this.screenNum = screenNum;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getScreenDate() {
		return screenDate;
	}
	public void setScreenDate(String screenDate) {
		this.screenDate = screenDate;
	}
	public int getRevTotal() {
		return revTotal;
	}
	public void setRevTotal(int revTotal) {
		this.revTotal = revTotal;
	}
	public MovieScreenDTO(String movieNum, String movieTitle, String movieEtitle, String movieDir, String movieAct,
			String movieDate, int movieRat, String moviePath, String movieYoutube, int movieState, String screenNum,
			String theaterName, String screenDate, int revTotal) {
		super();
		this.movieNum = movieNum;
		this.movieTitle = movieTitle;
		this.movieEtitle = movieEtitle;
		this.movieDir = movieDir;
		this.movieAct = movieAct;
		this.movieDate = movieDate;
		this.movieRat = movieRat;
		this.moviePath = moviePath;
		this.movieYoutube = movieYoutube;
		this.movieState = movieState;
		this.screenNum = screenNum;
		this.theaterName = theaterName;
		this.screenDate = screenDate;
		this.revTotal = revTotal;
	}
	public MovieScreenDTO() {
		super();
	}
	
	
	
	
}
