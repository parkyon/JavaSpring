package kor.green.springtest.object;

//객체 생성을 통한 컨트롤러 구현 글쓰기 구현
public class Board {
	
	private String noticeTitle;
	private String noticeID;
	private int noticeNUM;
	private String noticeMemo;
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		noticeTitle = noticeTitle;
	}
	public String getNoticeID() {
		return noticeID;
	}
	public void setNoticeID(String noticeID) {
		noticeID = noticeID;
	}
	public int getNoticeNUM() {
		return noticeNUM;
	}
	public void setNoticeNUM(int noticeNUM) {
		noticeNUM = noticeNUM;
	}
	public String getNoticeMemo() {
		return noticeMemo;
	}
	public void setNoticeMemo(String noticeMemo) {
		noticeMemo = noticeMemo;
	}




	public Board(String NoticeTitle, String NoticeID, int NoticeNUM, String NoticeMemo) {
		this.noticeID = NoticeID;
		this.noticeMemo = NoticeMemo;
		this.noticeNUM = NoticeNUM;
		this.noticeTitle = NoticeTitle;
	}

}
