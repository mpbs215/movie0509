package kosta.ridonbox.model.dto;

public class BoardDTO {
	private int boardNum;
	private String id;
	private String boardTitle;
	private String boardConts;
	private String reply;
	private String boardDate;
	private String boardPassword;
	
	public BoardDTO(int boardNum, String id, String boardTitle, String boardConts, String reply, String boardDate,
			String boardPassword) {
		super();
		this.boardNum = boardNum;
		this.id = id;
		this.boardTitle = boardTitle;
		this.boardConts = boardConts;
		this.reply = reply;
		this.boardDate = boardDate;
		this.boardPassword = boardPassword;
	}
	
	public BoardDTO() {
		super();
	}
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardConts() {
		return boardConts;
	}
	public void setBoardConts(String boardConts) {
		this.boardConts = boardConts;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardPassword() {
		return boardPassword;
	}
	public void setBoardPassword(String boardPassword) {
		this.boardPassword = boardPassword;
	}
	
	
}