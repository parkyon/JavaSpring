package kr.green.SpringTest.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//session의 정보를 가져온다.
public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)throws Exception{
		HttpSession session = request.getSession(); //이전정보 가져오는거 해당하는 값을 가져온다.
		ModelMap modelMap = modelAndView.getModelMap(); //현재 정보를 가져온다. 해당하는 정보를 객체로 넘겨준다.
		Object user = modelMap.get("user");   //
		if(user != null) {
			//로그인이 null 이 아니면 즉 로그인이 되면
			session.setAttribute("user", user);
			response.sendRedirect("/board/list");   //성공할시 가는 경로 이걸로 인해 로그인시 바로 게시판으로 가진다.
			System.out.println("new login success");
		}
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception{
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null) {
			//이전 유저 정보가 잇으면 그 유저정보를 지운다
			session.removeAttribute("user");
			System.out.println("claer login data before");
		}
		return true;
	}

}
