package kor.green.springtest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kor.green.springtest.object.Board;
import kr.green.SpringTest.dao.Mapper;

@Controller
@RequestMapping(value="/board/*")
public class BoadController {
	
	@Autowired
	Mapper mapper;
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String boardLisgGet(String NoticeNUM, String NoticeID, String NoticeTitle, String NoticeMemo, Model model) {
		Board board = new Board("제목", "저자", 1, "내용");
		model.addAttribute("board", board);
		
		model.addAttribute("NoticeNUM", NoticeNUM);
		model.addAttribute("NoticeID", NoticeID);
		model.addAttribute("NoticeTitle", NoticeTitle);
		model.addAttribute("NoticeMemo", NoticeMemo);

		return "/WEB-INF/views/board/list.jsp";
		
		
		
	}
	


	@RequestMapping(value = "NoticeBoard", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeboard(String NoticeNUM, String NoticeID, String NoticeTitle, String NoticeMemo, Model model) {
		System.out.println("제목"+NoticeTitle+","+"내용"+ NoticeMemo );
		model.addAttribute("NoticeNUM", NoticeNUM);
		model.addAttribute("NoticeID", NoticeID);
		model.addAttribute("NoticeTitle", NoticeTitle);
		model.addAttribute("NoticeMemo", NoticeMemo);
		if(!(NoticeTitle==null && NoticeMemo==null)) {
		
			

			System.out.println("작성완료");
			return "redirect:list";
		}
		return "/WEB-INF/views/board/NoticeBoard.jsp";
	}

	
	
}
