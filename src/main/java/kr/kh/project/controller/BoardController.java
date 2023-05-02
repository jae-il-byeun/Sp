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
public class BoardController {
	
	@Autowired
	TrafficService trafficService;
       
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView boardList(ModelAndView mv) {
		mv.setViewName("/board/boardList");
		return mv;
	}
	
	

}
