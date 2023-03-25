package kr.kh.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) {
		

		mv.setViewName("/main/home");
		
		return mv;
	}
	@RequestMapping(value = "/join/member", method = RequestMethod.GET)
	public ModelAndView memberJoin(ModelAndView mv) {
		

		mv.setViewName("/join/memberJoin");
		
		return mv;
	}
	@RequestMapping(value = "/join/ep", method = RequestMethod.GET)
	public ModelAndView EpJoin(ModelAndView mv) {
		

		mv.setViewName("/join/EntrepreneurJoin");
		
		return mv;
	}
	
}
