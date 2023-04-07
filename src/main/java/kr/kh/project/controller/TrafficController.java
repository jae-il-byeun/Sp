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
