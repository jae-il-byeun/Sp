package kr.kh.project.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.service.BusinessService;
import kr.kh.project.service.MemberService;
import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	BusinessService businessService;
	
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
			memberService.emailAuthentication(member.getMe_id(), member.getMe_email());
			mv.setViewName("redirect:/");
		}else {
			
			mv.setViewName("redirect:/join/member");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/join/business", method = RequestMethod.GET)
	public ModelAndView businessJoin(ModelAndView mv) {
		mv.setViewName("/join/businessjoin");
		return mv;
	}
	@RequestMapping(value="/join/business", method=RequestMethod.POST)
	public ModelAndView businessJoinPost(ModelAndView mv, BusinessVO seller) {
		boolean isSignup = businessService.businessjoin(seller);
		
		if(isSignup){
			businessService.emailAuthentication(seller.getBi_id(),seller.getBi_email());
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/join/business");
		}
		return mv;
	}
	@RequestMapping(value="/email", method=RequestMethod.GET)
	public ModelAndView email(ModelAndView mv, AuNumVO che) {
		if(businessService.emailAuthenticationConfirm(che)) {
			System.out.println("인증완료");
		}else {
			System.out.println("인증실패");
		}
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/check/id", method=RequestMethod.POST)
	public Map<String, Object> idCheck(@RequestBody MemberVO user){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(user);
		boolean res = memberService.checkId(user);
		System.out.println(res);
		map.put("res", res);
		return map;

	}
	@ResponseBody
	@RequestMapping(value = "/check/biId", method=RequestMethod.POST)
	public Map<String, Object> BiIdCheck(@RequestBody BusinessVO seller){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(seller);
		boolean res = businessService.checkBiId(seller);
		System.out.println(res);
		map.put("res", res);
		return map;

	}
	@RequestMapping(value="/login/member", method=RequestMethod.GET)
	public ModelAndView memberLogin(ModelAndView mv, MemberVO member) {
		String loginId = memberService.getLoginId();
		if(loginId != null && !loginId.contains("loginId")) {
			
		}
	}
	
	
	
	
	
	
	

	
	@RequestMapping(value = "/product/hotel", method = RequestMethod.GET)
	public ModelAndView hotel(ModelAndView mv) {
		mv.setViewName("/product/hotel");
		return mv;
	}
	@RequestMapping(value = "/product/hotelIntro", method = RequestMethod.GET)
	public ModelAndView hotelIntro(ModelAndView mv) {
		mv.setViewName("/product/hotelIntro");
		return mv;
	}
	@RequestMapping(value = "/product/motel", method = RequestMethod.GET)
	public ModelAndView motel(ModelAndView mv) {
		mv.setViewName("/product/motel");
		return mv;
	}
	@RequestMapping(value = "/product/pention", method = RequestMethod.GET)
	public ModelAndView pention(ModelAndView mv) {
		mv.setViewName("/product/pention");
		return mv;
	}
	@RequestMapping(value = "/traffic/search", method = RequestMethod.GET)
	public ModelAndView trafficMain(ModelAndView mv) {
		mv.setViewName("/traffic/trafficSearch");
		return mv;
	}
	@RequestMapping(value = "/traffic/scheduel", method = RequestMethod.GET)
	public ModelAndView trafficScheduel(ModelAndView mv) {
		mv.setViewName("/traffic/trafficScheduel");
		return mv;
	}
	@RequestMapping(value = "/traffic/seat", method = RequestMethod.GET)
	public ModelAndView trafficSeat(ModelAndView mv) {
		mv.setViewName("/traffic/trafficSeat");
		return mv;
	}
}
