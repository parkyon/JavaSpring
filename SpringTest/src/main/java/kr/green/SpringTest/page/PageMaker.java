package kr.green.SpringTest.page;


//< 1 2 4 5 6 6 ....> 으로 그려진 전체를 관리한다.
//
public class PageMaker {
	
	private int totalCount;   //테이블에서 sql문으로 검색한 column의 갯수
	private int startPage; //해당 페이지네이션의 시작페이지(1,11,21,....)
	private int endPage; // 해당 페이지 제이션의 마지막페이지(10,20,30,3,4....)
	private boolean prev; //이전   활성또는 비활성화 둘중 하나이기때문에 boolean타입으로 한다.
	private boolean next; //이후
	
	private int displayPageNum = 10;   // 한 페이지네이션 에서 나타나는 페이지 수
	
	private Page page;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcDate();   //메소드 생성
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public void calcDate() {
		endPage = (int) (Math.ceil(page.getPage()/(double)displayPageNum)*displayPageNum);
		//start가 1 이면 마지막은 10 start가 14이면 마지막 20이 되게 만들기 위한 공식
		// page/10 올림 *10
		//Math.ceil 은 올림을 해주는거 즉 1.3를 2.0으로 만들어준다
		startPage = (endPage-displayPageNum)+1;
		int tempEndPage = (int)(Math.ceil(totalCount)/(double)page.getPerPageNum());  //총 필요한 페이지수를 구한다
		
		if(endPage > tempEndPage)
			endPage = tempEndPage;
		//endpage와 tmpEndpage중 작은 것을 실제 endpage로 한다.
		prev = startPage == 1? false: true;  //startPage가 1과 같으면 false 다르면 true
		
		//next = page.getPage() *page.getPerPageNum() >= totalCount ? false : true; 
		//하나씩 다음 버튼 누를경우에 위에거 꺼사용
		next = endPage *page.getPerPageNum() >= totalCount ? false : true;   //10개씩 다음버튼 끊을떄 이걸 사용 (네이버카페 기준)
				
		
	}

}
