package kr.kh.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.pagination.PageMaker;
import kr.kh.project.service.BoardService;
import kr.kh.project.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
       
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView boardList(ModelAndView mv,Criteria cri) {
//		ArrayList<BoardVO> board_list = boardService.getBoardList(cri);
//		int totalCount = boardService.getBoardTotalCount(cri);
//		PageMaker page = new PageMaker(totalCount,10, cri);
//		mv.addObject("board_list",board_list);
//		mv.addObject("page",page);
		mv.setViewName("/board/boardList");
		return mv;
	}
	
	
 
}
