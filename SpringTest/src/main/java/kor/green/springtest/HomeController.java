package kor.green.springtest;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("123Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "resources/html/home.html";
	}
	
	@RequestMapping(value="/test", method = { RequestMethod.GET , RequestMethod.POST})
	public String Test() {
		return "WEB-INF/views/home.jsp";
	}
	
	@RequestMapping(value="/login", method =  RequestMethod.GET)
	public String login() {
		
		return "WEB-INF/views/login.jsp";
	}
	@RequestMapping(value="/login", method =  RequestMethod.POST)
	public String login(String ID, String PW) {
		
		
		System.out.println(ID+"  ,  "+PW );
		if(!(ID==null && PW==null)) {
				
			System.out.println("로그인이 완료되었습니다");
			return "WEB-INF/views/home.jsp";
		}
	return "WEB-INF/views/login.jsp";
	}
}