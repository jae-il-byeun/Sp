package kr.kh.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.pagination.PageMaker;
import kr.kh.project.service.BoardService;
import kr.kh.project.utils.MessageUtils;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.MemberVO;


@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
       
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView boardList(ModelAndView mv,Criteria cri,HttpSession session) {
//		ArrayList<BoardVO> board_list = boardService.getBoardList();
		ArrayList<BoardTypeVO> btList= boardService.getBoardListType();
		ArrayList<BoardVO> board_list = boardService.getBoardList(cri);
		
		int totalCount = boardService.getBoardTotalCount(cri);
		PageMaker pm = new PageMaker(totalCount,10, cri);
		
		Integer aunch = (Integer)session.getAttribute("au");
		
		mv.addObject("aunch", aunch == null ? 0 : aunch);
		mv.addObject("pm",pm);
		mv.addObject("btList",btList);
		mv.addObject("board_list",board_list);
		mv.setViewName("/board/boardList");
		return mv;
	}
	
	@RequestMapping(value = "/board/insert", method = RequestMethod.GET)
	public ModelAndView boardInsert(ModelAndView mv,HttpSession session,Integer bo_ori_num,HttpServletResponse response) {
		//권한번호 가져오기
		MemberVO user = (MemberVO)session.getAttribute("user");
		BusinessVO seller =(BusinessVO)session.getAttribute("seller");
		if(user == null && seller == null) {
			MessageUtils.alertAndMovePage(response, "작성 권한 없음.", "/project", "/board/list");
		}
		int me_authority= (Integer)session.getAttribute("au");
		// 비회원추가 해야함
		ArrayList<BoardTypeVO> btList= boardService.getBoardType(me_authority);
		bo_ori_num = (bo_ori_num == null ? 0 : bo_ori_num);
//		BoardVO board = boardService.getBoard(bo_ori_num, user, seller);
//		if(board == null) {
//			MessageUtils.alertAndMovePage(response, "게시글이 없습니다.", "/project", "/board/list");		
//		}
//		mv.addObject("board", board);
		mv.addObject("btList", btList);
		mv.addObject("bo_ori_num", bo_ori_num);
		if(btList.size() == 0) {
			mv.setViewName("redirect:/board/list");
		}else
			mv.setViewName("/board/boardInsert");
		return mv;
	}
	@RequestMapping(value="/board/insert", method=RequestMethod.POST)
	public ModelAndView boardInsertPost(ModelAndView mv, BoardVO board, HttpSession session, MultipartFile []files) {
		MemberVO user = (MemberVO)session.getAttribute("user");
		BusinessVO seller =(BusinessVO)session.getAttribute("seller");
		//파일 저장시 사이즈를 정해주고 넣어야한다.
		if(user == null && seller == null) {
			mv.setViewName("redirect:/");
		}else if(user != null && seller == null) {
			int session_au = user.getMe_authority();
			mv.addObject("session_au",session_au);
			mv.addObject("nu",user);
			boardService.insertBoard_User(board, user, 	files);
		}else if(user == null && seller != null) {
			int session_au = seller.getBi_authority();
			mv.addObject("session_au",session_au);
			mv.addObject("nu",seller);
			boardService.insertBoard_Seller(board, seller, files);
		}
		mv.setViewName("redirect:/board/list");
		return mv;
	}
	@RequestMapping(value = "/board/detail", method=RequestMethod.GET)
	public ModelAndView boardDetail(ModelAndView mv, HttpSession session,
			HttpServletResponse response) { //		@PathVariable("bo_num")int bo_num,


		int auck = (Integer)session.getAttribute("au");
		
//		MemberVO user = (MemberVO)session.getAttribute("user");
//		BoardVO board = boardService.getBoard(bo_num, user);
//		ArrayList<FileVO> files = boardService.getFileList(bo_num);
//		LikesVO likesVo = boardService.getLikes(bo_num, user);
		
//		mv.addObject("board", board);
//		mv.addObject("files", files);
//		mv.addObject("likes", likesVo);
		if(auck == 0 || session== null) {
			MessageUtils.alertAndMovePage(response, 
					"삭제되거나 조회권한이 없는 게시글입니다.", 
					"/spring", "/board/list");
		}else
			mv.setViewName("/board/boardView");
		return mv;
	}
 
}
