package kr.green.SpringTest.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.SpringTest.dao.Board;
import kr.green.SpringTest.dao.BoardMapper;
import kr.green.SpringTest.page.Page;
import kr.green.SpringTest.page.PageMaker;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	@Autowired
	BoardMapper boardMapper;
	
	@RequestMapping(value="/write", 
			method= RequestMethod.GET)
	public String boardWriteGet(Model model) {
		return "/WEB-INF/views/board/write.jsp";
	}
	@RequestMapping(value="/write", 
			method= RequestMethod.POST)
	public String boardWritePOST(Model model, HttpServletRequest request) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String author = request.getParameter("author");
		boardMapper.setBoard(title, contents, author);
		return "redirect:/board/list";
	}
	@RequestMapping(value="/list", 
			method= RequestMethod.GET)
	public String boardListGet(Model model, Integer page, HttpServletRequest r) {
		//ArrayList<Board> list = (ArrayList)boardMapper.getBoards();
		if(page == null)
			page = 1;
		Page p = new Page(page,10);
		ArrayList<Board> list;
		int totalCount = 0;
		String search = r.getParameter("search");
		//검색어가 없을때 
		if(search == null || search.length()== 0) {
		list = (ArrayList)boardMapper.getPageBoards(p);
		totalCount = boardMapper.getBoardsCount();			
		}
		
		//검색어가 있을경우
		else {
			list = (ArrayList)boardMapper.getPageBoardsByTitle("%"+search+"%");
			totalCount = boardMapper.getBoardsCountByTitle("%"+search+"%");
		}
		PageMaker pm = new PageMaker();   //숫자에 연관딘 것을 만들어주기 이한거.
		pm.setPage(p);
		pm.setTotalCount(totalCount);
		model.addAttribute("list", list);
		model.addAttribute("pm", pm);

		
		
		return "/WEB-INF/views/board/list.jsp";
		
	}
	
	@RequestMapping(value="/list", 
			method= RequestMethod.POST)
	public String boardListPost(Model model,String search) {   //list.jsp에서 name=search 임
		model.addAttribute("search", search);			
		return "redirect:/board/list";
	}
	@RequestMapping(value="/detail", 
			method= RequestMethod.GET)
	public String boardDetailGet(Model model, int number) {
		Board board = boardMapper.getBoardById(number);
		model.addAttribute("board", board);
		return "/WEB-INF/views/board/detail.jsp";
	}
	@RequestMapping(value="/modify", 
			method= RequestMethod.POST)
	public String boardModifyPost(Model model, HttpServletRequest r) {
		int number = Integer.parseInt(r.getParameter("number"));
		Board tmp = boardMapper.getBoardById(number);
		tmp.setTitle(r.getParameter("title"));
		tmp.setContents(r.getParameter("contents"));
		tmp.setAuthor(r.getParameter("author"));
		boardMapper.modifyBoard(tmp);
		
		
		return "redirect:/board/list";
	}
}


