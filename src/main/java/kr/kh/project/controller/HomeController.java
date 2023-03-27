package kr.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.service.MemberService;
import kr.kh.project.vo.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
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
	@RequestMapping(value = "/join/member", method = RequestMethod.POST)
	public ModelAndView memberJoinPost(ModelAndView mv, MemberVO member) {

		boolean isSignup = memberService.memberjoin(member);
		
		if(isSignup) {
			mv.setViewName("redirect:/");
		}
		mv.setViewName("redirect:/join/member");
		
		return mv;
	}
	@RequestMapping(value = "/join/business", method = RequestMethod.GET)
	public ModelAndView EpJoin(ModelAndView mv) {
		

		mv.setViewName("/join/businessjoin");
		
		return mv;
	}
	@RequestMapping(value = "/product/hotel", method = RequestMethod.GET)
	public ModelAndView hotel(ModelAndView mv) {
		mv.setViewName("/product/hotel");
		return mv;
	}
}
