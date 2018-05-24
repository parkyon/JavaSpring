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
	public String boardListGet(Model model) {
		//ArrayList<Board> list = (ArrayList)boardMapper.getBoards();
		Page p = new Page(1,10);
		ArrayList<Board> list = (ArrayList)boardMapper.getPageBoards(p);
		model.addAttribute("list", list);
		return "/WEB-INF/views/board/list.jsp";
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

