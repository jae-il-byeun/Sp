package kr.kh.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TrafficController {
	
       
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
	public ModelAndView trafficSeat(ModelAndView mv) {
		mv.setViewName("/traffic/trafficSeat");
		return mv;
	}

}
