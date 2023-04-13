package kr.kh.project.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.service.TrafficService;
import kr.kh.project.vo.TrafficVO;

@Controller
public class TrafficController {
	
	@Autowired
	TrafficService trafficService;
       
	@RequestMapping(value = "/traffic/search", method = RequestMethod.GET)
	public ModelAndView trafficMain(ModelAndView mv) {
		mv.setViewName("/traffic/trafficSearch");
		return mv;
	}
	@RequestMapping(value = "/traffic/scheduel", method = RequestMethod.GET)
	public ModelAndView trafficScheduel(ModelAndView mv,String st,String sv,String at,String av,String sdv,String adv) {
		String bs_st= st;
		String bs_sv = sv;
		String bs_at = at;
		String bs_av = av;
		String bs_sdv = sdv;
		String bs_adv = adv;
		mv.addObject("bs_st", bs_st);
		mv.addObject("bs_sv", bs_sv);
		mv.addObject("bs_at", bs_at);
		mv.addObject("bs_av", bs_av);
		mv.addObject("bs_sdv", bs_sdv);
		mv.addObject("bs_adv", bs_adv);
		mv.setViewName("/traffic/trafficScheduel");
		return mv;
	}
	@RequestMapping(value = "/traffic/seat", method = RequestMethod.GET)
	public ModelAndView trafficSeat(ModelAndView mv,String st,String sv,String at,String av,Date rd,String seat,Date delay) {
		String bs_st= st;
		String bs_sv = sv;
		String bs_at = at;
		String bs_av = av;
		Date bs_rd= rd;
		String bs_seat = seat;
		Date bs_delay = delay;
		mv.addObject("bs_st", bs_st);
		mv.addObject("bs_sv", bs_sv);
		mv.addObject("bs_at", bs_at);
		mv.addObject("bs_av", bs_av);
		mv.addObject("bs_rd", bs_rd);
		mv.addObject("bs_seat", bs_seat);
		mv.addObject("bs_delay", bs_delay);
		mv.setViewName("/traffic/trafficSeat");
		return mv;
	}
	@RequestMapping(value = "/traffic/re_seat", method = RequestMethod.POST)
	public Map<String,Object> remainSeat(TrafficVO seat) {
		HashMap<String,Object> remain = new HashMap<String, Object>();
		String r_seat = trafficService.nowSeat(seat);
		remain.put("u_seat",r_seat);
		return remain;
	}

}
