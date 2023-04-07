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
//			memberService.emailAuthentication(member.getMe_email());
			mv.setViewName("redirect:/");
		}else {
			
			mv.setViewName("redirect:/join/memberJoin");
		}
		
		return mv;
	}
	@ResponseBody
	@RequestMapping(value="/join/email",method= RequestMethod.POST)
	public Map<String, Object> memberEmail(@RequestBody MemberVO me_email) {
		HashMap<String, Object> email = new HashMap<String, Object>();
		String check = memberService.emailAuCheck(me_email.getMe_email());
		email.put("result", check);
		return email;
	}
	
	@ResponseBody
	@RequestMapping(value = "/check/id", method=RequestMethod.POST)
	public Map<String, Object> idCheck(@RequestBody MemberVO user){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(user);
		boolean res = memberService.checkId(user);
		System.out.println(res);
		map.put("res", res);
			 //	key   value			
		return map;

	}
	@ResponseBody
	@RequestMapping(value = "/login/member", method=RequestMethod.POST)
	public Map<String, Object> memberLogin(ModelAndView mv, @RequestBody MemberVO member){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		MemberVO user = memberService.login(member);
		
		mv.addObject("user",user);
		if(user != null) {
			map.put("result", true);
		}
		else {
			map.put("result", false);
		}
		return map;

	}
	
	
	
	
	
	
	@RequestMapping(value = "/join/business", method = RequestMethod.GET)
	public ModelAndView businessJoin(ModelAndView mv) {
		mv.setViewName("/join/businessJoin");
		return mv;
	}
	
	@RequestMapping(value="/join/business", method=RequestMethod.POST)
	public ModelAndView businessJoinPost(ModelAndView mv, BusinessVO seller) {
		boolean isSignup = businessService.businessjoin(seller);
		
		if(isSignup){
//			businessService.emailAuthentication(seller.getBi_id(),seller.getBi_email());
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/join/business");
		}
		return mv;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/check/businessId", method=RequestMethod.POST)
	public Map<String, Object> BiIdCheck(@RequestBody BusinessVO seller){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(seller);
		boolean res = businessService.checkBiId(seller);
		System.out.println(res);
		map.put("res", res);
		return map;

	}
	@ResponseBody
	@RequestMapping(value="/join/biEmail",method= RequestMethod.POST)
	public Map<String, Object>businessEmail(@RequestBody BusinessVO bi_email) {
		HashMap<String, Object> email = new HashMap<String, Object>();
		String check = businessService.biEmailAuCheck(bi_email.getBi_email());
		email.put("result", check);
		return email;
	}
	
	@ResponseBody
	@RequestMapping(value = "/login/business", method=RequestMethod.POST)
	public Map<String, Object> businessLogin(ModelAndView mv, @RequestBody BusinessVO seller){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		BusinessVO bm = businessService.businesslogin(seller);
		
		mv.addObject("seller",bm);
		if(bm != null) {
			map.put("result", true);
		}
		else {
			map.put("result", false);
		}
		return map;

	}

}
