package kr.kh.project.controller;

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
	
		mv.addObject("bs_st", st);
		mv.addObject("bs_sv", sv);
		mv.addObject("bs_at", at);
		mv.addObject("bs_av", av);
		mv.addObject("bs_sdv", sdv);
		mv.addObject("bs_adv", adv);
		mv.setViewName("/traffic/trafficScheduel");
		return mv;
	}
	@RequestMapping(value = "/traffic/seatExpress", method = RequestMethod.GET)
	public ModelAndView trafficSeatExpress(ModelAndView mv,String st,String sv,String at,String av,String rd,String fare,String ex,String delay) {

		mv.addObject("bs_st", st);
		mv.addObject("bs_sv", sv);
		mv.addObject("bs_at", at);
		mv.addObject("bs_av", av);
		mv.addObject("bs_rd", rd);
		mv.addObject("bs_fare", fare);
		mv.addObject("bs_ex", ex);
		mv.addObject("bs_delay", delay);
		mv.setViewName("/traffic/trafficSeatExpress");
		return mv;
	}
	@RequestMapping(value = "/traffic/seatWoodung", method = RequestMethod.GET)
	public ModelAndView trafficSeatWoodung(ModelAndView mv,String st,String sv,String at,String av,String rd,String fare,String ex,String delay) {
		mv.addObject("bs_st", st);
		mv.addObject("bs_sv", sv);
		mv.addObject("bs_at", at);
		mv.addObject("bs_av", av);
		mv.addObject("bs_rd", rd);
		mv.addObject("bs_fare", fare);
		mv.addObject("bs_ex", ex);
		mv.addObject("bs_delay", delay);
		mv.setViewName("/traffic/trafficSeatWoodung");
		return mv;
	}
	@RequestMapping(value = "/traffic/seatPremium", method = RequestMethod.GET)
	public ModelAndView trafficSeatPreminum(ModelAndView mv,String st,String sv,String at,String av,String rd,String fare,String ex,String delay) {

		mv.addObject("bs_st", st);
		mv.addObject("bs_sv", sv);
		mv.addObject("bs_at", at);
		mv.addObject("bs_av", av);
		mv.addObject("bs_rd", rd);
		mv.addObject("bs_fare", fare);
		mv.addObject("bs_ex", ex);
		mv.addObject("bs_delay", delay);
		mv.setViewName("/traffic/trafficSeatPremium");
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
