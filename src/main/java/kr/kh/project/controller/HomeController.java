package kr.kh.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HashMap<String, Object> aunum = new HashMap<String, Object>();
		String check = memberService.emailAuCheck(me_email.getMe_email());
		aunum.put("result", check);
		return aunum;
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
	public Map<String, Object> memberLogin(ModelAndView mv, @RequestBody MemberVO member,HttpSession session){
		HashMap<String, Object> map = new HashMap<String, Object>();

		MemberVO user = memberService.login(member);
		//로그인을 세션을 저장 -> 객체에 담고 ->
		mv.addObject("user",user);
		
		if(user != null) {
			session.setAttribute("user", user);
			
			map.put("result", true);
			return map;
			
		}
		else {
			map.put("result", false);
			return map;
		}

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
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/join/businessJoin");
		}
		return mv;
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
	@RequestMapping(value = "/check/businessId", method=RequestMethod.POST)
	public Map<String, Object> BiIdCheck(@RequestBody BusinessVO seller){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(seller);
		boolean result = businessService.checkBiId(seller);
		System.out.println(result);
		map.put("res", result);
		return map;

	}
	
	@ResponseBody
	@RequestMapping(value = "/login/business", method=RequestMethod.POST)
	public Map<String, Object> businessLogin(ModelAndView mv, @RequestBody BusinessVO seller,HttpSession session){
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(seller);
		BusinessVO business = businessService.businesslogin(seller);
		
		mv.addObject("seller",business);
		if(business != null) {
			session.setAttribute("seller", business);
			map.put("result", true);
			return map;
		}else {
			map.put("result", false);
			return map;
		}
	}

	@ResponseBody//리퀘스트가 서버,리스폰스= 현재페이지
	@RequestMapping(value="/login/check", method=RequestMethod.POST)
	public Map<String,Object> loginCheck(HttpSession lgCheck){
		HashMap<String, Object> keepUser = new HashMap<String,Object>();
		
		MemberVO user = (MemberVO)lgCheck.getAttribute("user");
		BusinessVO biLogin = (BusinessVO)lgCheck.getAttribute("seller");
		if(user == null && biLogin == null) {
			keepUser.put("lgCheck", false);
		}
		else if(user != null && biLogin == null){
			keepUser.put("lgCheck", user);
			
		}else if(user == null && biLogin != null){
			keepUser.put("lgCheck", biLogin);
		}
		return keepUser;
		//사업자는 사업자VO에 객체를 만들어서 
		// 사업자가 모두 다 널이면 펄스 하나라도 았으면 트루 
		// 그안에 이프절로 멤버가 널이 아니면 멤버로 데이터를 보내고 사업자가 널이 아니면 사업자를 보내서 처리한다.
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/logout", method=RequestMethod.POST)
	public Map<String, Object> logout(ModelAndView mv, HttpSession session, HttpServletResponse response) throws IOException {
		HashMap<String,Object> logout = new HashMap<String,Object>();
		MemberVO user = (MemberVO)session.getAttribute("user");
		BusinessVO seller = (BusinessVO)session.getAttribute("seller");
		// 객체로 받기 때문에 자동 형변환이 안되어서 MemberVO로 지정해줘야함
		if(user == null && seller == null){
			logout.put("result", false);
			
		}else if (user!= null){
			logout.put("result", true);
			session.removeAttribute("user");
		}else if(seller !=null) {
			logout.put("result", true);
			session.removeAttribute("seller");
		}
		//세션에 있는 회원정보를 삭제
		
		mv.setViewName("/main/home");
		return logout;
	}
	
	@RequestMapping(value = "/mypage/mypageMain", method = RequestMethod.GET)
	public ModelAndView myPageMain(ModelAndView mv) {
		mv.setViewName("/mypage/myPage");
		return mv;
	}	
	@RequestMapping(value = "/mypage/basket", method = RequestMethod.GET)
	public ModelAndView myPageBasket(ModelAndView mv) {
		mv.setViewName("/mypage/basket");
		return mv;
	}
	
}
