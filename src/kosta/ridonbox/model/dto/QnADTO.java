package kosta.ridonbox.model.dto;

public class QnADTO{
	private int qnaNo;	  //pk �۹�ȣ 
	private String memberId;  //memberid
	private String qnaTitle;//����
	private String context;	  //����
	private String comment;		//���
	private String date;	  //��ϳ�¥.
	private String password;//��й�ȣ.
	
	public QnADTO(){}

	public QnADTO(int qnaNo,String password) {
		this.qnaNo = qnaNo;
		this.password = password;
	}
		public QnADTO(int qnaNo, String memberId, String context) {
		super();
		this.qnaNo = qnaNo;
		this.memberId = memberId;
		this.context = context;
	}
	
	public QnADTO(String memberId, String qnaTitle, String context, String comment, String date, String password) {
			super();
			this.memberId = memberId;
			this.qnaTitle = qnaTitle;
			this.context = context;
			this.comment = comment;
			this.date = date;
			this.password = password;
		}

	public QnADTO(int qnaNo, String memberId, String qnaTitle, String context, String comment, String date,
			String password) {
		this.qnaNo = qnaNo;
		this.memberId = memberId;
		this.qnaTitle = qnaTitle;
		this.context = context;
		this.comment = comment;
		this.date = date;
		this.password = password;
	}


	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
