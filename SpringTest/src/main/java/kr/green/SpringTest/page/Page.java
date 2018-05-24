package kr.green.SpringTest.page;


//현재 페이지 관리
public class Page {
	private int page;   //현재 페이지 번호
	private int perPageNum; //한 페이지에 나타낼수 있는 글의 최대 갯수	
	
	public Page() {     //생성자의 기본은 변수 초기화
		page = 1;
		perPageNum = 10;
	}
	public Page(int page, int perPageNum) {
		
		this.setPage(page);
		this.setPerPageNum(perPageNum);     //set을 사용하는게 밑에 예외처리 있는 setXXX를 불러오기떄문에 따라 예외처리를 할 필요가없다.
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <=0)
			this.page = 1;
		else
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <=0 || perPageNum > 50)   //음수가 될거 없고 기준을 최대 50가지만 보여주게 하기 위해서
			this.perPageNum = 10;
		else
		this.perPageNum = perPageNum;
	}
	public int getPageStart() {    //해당 페이지가 시작하면 sql문의 limit x, y 에서 x를 담당한다. 즉 몇번째부터 가져올건지
		
		return (page-1)*perPageNum;     //perPageNum은 10으로 고정되어잇다 그리고 이것은 배열이 0부터 시작하기 때문에 1페이지는 (1-1)*10 0번부터 10까지
		
	}

}
