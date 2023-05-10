package kr.kh.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.pagination.PageMaker;
import kr.kh.project.service.BoardService;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;

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
	@RequestMapping(value = "/board/insert", method = RequestMethod.GET)
	public ModelAndView boardInsert(ModelAndView mv,HttpServletRequest request,Integer bo_ori_num) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		BusinessVO seller = (BusinessVO)request.getSession().getAttribute("seller");
		//비회원추가 해야함
		ArrayList<BoardTypeVO> btList= boardService.getBoardType(user.getMe_authority());
		bo_ori_num = bo_ori_num == null ? 0 : bo_ori_num;
		BoardVO board = boardService.getBoard(bo_ori_num, user);
		
		if(user == null && seller == null) {
			return null;
		}
		else if(user != null && seller == null){
			mv.addObject("user", user);
			
		}else if(user == null && seller != null){
			mv.addObject("seller", seller);
		}
		mv.addObject("board", board);
		mv.setViewName("/board/boardInsert");
		return mv;
	}
	
	
 
}
