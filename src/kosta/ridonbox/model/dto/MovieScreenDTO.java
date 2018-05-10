package kosta.ridonbox.model.dto;

public class MovieScreenDTO {
	
	private String movieNum;		//pk
	private String movieTitle;		//제목
	private String movieEtitle;//영어제목
	private String movieDate;	//개봉일
	private String movieCountry; //제작국가
	private String movieDir;	//감독
	private String movieState;				//영화 상태(상영중 1, 상영종료 0)
	private String moviePath;			//이미지경로
	private String movieYoutube;		//유튜브경로
	private String screenNum; //상영번호
	private String theaterName; //상영관이름
	private String screenDate; //상영날짜
	private String screenTime; //상영날짜
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
	public String getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}
	public String getMovieCountry() {
		return movieCountry;
	}
	public void setMovieCountry(String movieCountry) {
		this.movieCountry = movieCountry;
	}
	public String getMovieDir() {
		return movieDir;
	}
	public void setMovieDir(String movieDir) {
		this.movieDir = movieDir;
	}
	public String getMovieState() {
		return movieState;
	}
	public void setMovieState(String movieState) {
		this.movieState = movieState;
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
	public String getScreenTime() {
		return screenTime;
	}
	public void setScreenTime(String screenTime) {
		this.screenTime = screenTime;
	}
	public MovieScreenDTO(String movieNum, String movieTitle, String movieEtitle, String movieDate, String movieCountry,
			String movieDir, String movieState, String moviePath, String movieYoutube, String screenNum,
			String theaterName, String screenDate, String screenTime) {
		super();
		this.movieNum = movieNum;
		this.movieTitle = movieTitle;
		this.movieEtitle = movieEtitle;
		this.movieDate = movieDate;
		this.movieCountry = movieCountry;
		this.movieDir = movieDir;
		this.movieState = movieState;
		this.moviePath = moviePath;
		this.movieYoutube = movieYoutube;
		this.screenNum = screenNum;
		this.theaterName = theaterName;
		this.screenDate = screenDate;
		this.screenTime = screenTime;
	}
	public MovieScreenDTO() {
		super();
	}
	public MovieScreenDTO(String movieNum, String movieTitle, String screenNum, String theaterName, String screenDate,
			String screenTime) {
		super();
		this.movieNum = movieNum;
		this.movieTitle = movieTitle;
		this.screenNum = screenNum;
		this.theaterName = theaterName;
		this.screenDate = screenDate;
		this.screenTime = screenTime;
	}
	
	
	
	
}
