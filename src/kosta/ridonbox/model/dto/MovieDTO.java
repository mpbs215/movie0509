package kosta.ridonbox.model.dto;

public class MovieDTO {

	private String movieNum;		//pk
	private String movieTitle;		//����
	private String movieEtitle;//��������
	private String movieDate;	//������
	private String movieCountry; //���۱���
	private String movieDir;	//����
	private String movieState;				//��ȭ ����(���� 1, ������ 0)
	private String moviePath;			//�̹������
	private String movieYoutube;		//��Ʃ����
	
	public MovieDTO(String movieNum, String movieTitle, String movieEtitle, String movieDate, String movieCountry,
			String movieDir, String movieState, String moviePath, String movieYoutube) {
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
	}
	
	public MovieDTO() {
		super();
	}
	
	public MovieDTO(String movieNum, String movieTitle) {
		this.movieNum = movieNum;
		this.movieTitle = movieTitle;
	}

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
	
	
	
}