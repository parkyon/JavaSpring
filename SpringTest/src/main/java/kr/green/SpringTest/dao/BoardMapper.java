package kr.green.SpringTest.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.SpringTest.page.Page;

public interface BoardMapper {
	public void setBoard(@Param("title") String title,
			@Param("contents") String contents,@Param("author") String author);
	public List<Board> getBoards();   //모든 게시글을 가져옴
	public Board getBoardById(@Param("number") int number);
	public void modifyBoard(@Param("title") String title,
			@Param("contents") String contents,@Param("author") String author,@Param("number") int number);
			
	public void modifyBoard(Board board);
	
	public List<Board> getPageBoards(Page p);  // 현재페이디데 애다한 정보를 받아서 그거에 해당하는 게시글만 받아서 온다.
	
	public Integer getBoardsCount();
	//제목 검색을 위한 메소드
	public List<Board> getPageBoardsByTitle(@Param("p")Page p, @Param("search")String search);
	public Integer getBoardsCountByTitle(@Param("search")String search);
	//내용 검색을 위한 메소드
	public List<Board> getPageBoardsByContents(@Param("p")Page p, @Param("search")String search);
	public Integer getBoardsCountByContents(@Param("search")String search);
	//작성자 검색을 위한 메소드
	public List<Board> getPageBoardsByAuthor(@Param("p")Page p, @Param("search")String search);
	public Integer getBoardsCountByAuthor(@Param("search")String search);

	
}
