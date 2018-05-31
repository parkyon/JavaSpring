package kr.green.SpringTest.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.SpringTest.dao.Mapper;
import kr.green.SpringTest.dao.User;
import kr.green.SpringTest.dto.LoginDTO;


@Controller
public class HomeController {
	@Autowired
	Mapper mapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeGet(HttpServletRequest request,HttpServletResponse response) throws Exception {
			
		
		return "/WEB-INF/views/home.jsp";
		
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainGet(String id, String pw,Model model) {
		model.addAttribute("id", id);
		return "/WEB-INF/views/main.jsp";
	}
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String mainPost(HttpServletRequest request,Model model, LoginDTO dto) {
		
		User user = mapper.login(dto);
		if(user == null)//계정을 못찾은 경우
			return "redirect:/";
		//계정은 찾았지만 비번이 틀린 경우
	
		model.addAttribute("user", user);
		return "/WEB-INF/views/main.jsp";
	}
	
	
	
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		//로그아웃 누르고 list주소를 쳐서 들어갈경우 들어가지느걸 막기 위해 로그아웃하면 그 세션에 있는 user정보를 삭제해준다.
		
		return "redirect:/";
	}
}




