

package kor.green.springtest;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.SpringTest.dao.Mapper;
import kr.green.SpringTest.dao.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	Mapper mapper;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	
	

	@RequestMapping(value="/login", method =  RequestMethod.GET)
	public String login() {
		
		return "WEB-INF/views/login.jsp";
	}

	@RequestMapping(value="/login", method =  RequestMethod.POST)
	public String login(String ID, String PW, Model model ) {
		
		
		System.out.println(ID+"  ,  "+PW );
		//logger.info("id: " + ID + ", pw : " +PW ); 이런방식으로 가능하다
		
		model.addAttribute("ID",ID);
		model.addAttribute("PW", PW);
		
		if(!(ID==null && PW==null)) {
				
			System.out.println("로그인이 완료되었습니다");
			return "redirect:/";
		} 
	return "WEB-INF/views/login.jsp";
	}
	
	@RequestMapping(value="/signup", method =  RequestMethod.GET)
	public String signup() {
		
		return "WEB-INF/views/signup.jsp";
	}

	@RequestMapping(value="/signup", method =  RequestMethod.POST)
	public String signup(String name, String id, String pw, String email, String CPW ,Model model ) {
		
		
		System.out.println(" 이름 "+name+"아이디 ,"+id+" 비밀번호, "+pw +" 비밀번호확인,"+ CPW+" 이메일주소 , "+email);
		//logger.info("id: " + ID + ", pw : " +PW ); 이런방식으로 가능하다
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		model.addAttribute("pw", pw);
		model.addAttribute("email", email);
		model.addAttribute("CPW",CPW);
	
		
		if((id.length()==0 || pw.length()==0 || name.length()==0 || email.length()==0 || CPW.length()==0 || pw!=CPW)) {
				
			System.out.println("회원등록에 실패했습니다");
			return "WEB-INF/views/signup.jsp";
		} 
	
	return "redirect:/";
	}
	
	@RequestMapping(value ="/test", method = RequestMethod.POST)
	public String testPost(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		//model.addAttribute("id", mapper.getId(id));
		//model.addAttribute("email", mapper.getEmail(id));
		//model.addAttribute("pw", mapper.getPw(id));
		//하나씩 검사하는것들		
		User tmp = mapper.getUser(id);
		model.addAttribute("user", tmp);
		//한번에 검사
		
		return "/WEB-INF/views/test.jsp";
	}
	
	@RequestMapping(value ="/", method = RequestMethod.GET)
	public String homeGet(String id, String pw, Model model, HttpServletRequest request) {
	model.addAttribute("id", id);
		
	
	
		
		return "/WEB-INF/views/home.jsp";
	}

	@RequestMapping(value ="/", method = RequestMethod.POST)
	public String homePost(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		User user = mapper.getUser(id);
		if(user == null) //계적을 못찾은경우
			return "redirect:/";
		//계정은 찾았지만 비번이 틀린경우
		else if(user.getPw().compareTo(pw) !=0)
			return "redirect:/";
		
		return "/WEB-INF/views/home.jsp";
	}
	
	
}