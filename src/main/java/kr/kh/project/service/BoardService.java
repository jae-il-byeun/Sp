package kr.kh.project.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.vo.BoardFileVO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.MemberVO;

public interface BoardService {


//	ArrayList<BoardVO> getBoardList();
	ArrayList<BoardVO> getBoardList(Criteria cri);
	
	int getBoardTotalCount(Criteria cri);

	ArrayList<BoardTypeVO> getBoardType(int me_authority);
	ArrayList<BoardTypeVO> getBoardListType();
	
//	ArrayList<BoardTypeVO> getUserBoardType(int me_authority);

	boolean insertBoard_User(BoardVO board, MemberVO user, MultipartFile[] files);

	boolean insertBoard_Seller(BoardVO board, BusinessVO seller, MultipartFile[] files);

	String selectBoardWrite(BoardTypeVO bo_bt_num);

	BoardVO getBoard(int bo_num, MemberVO user);

	BoardVO getBoard(int bo_num, BusinessVO seller);

	ArrayList<Map<String, Object>> getBftnf(int bo_num);

	boolean deleteBoard(int bo_num, MemberVO user, BusinessVO seller);

	int updateLikes(MemberVO user, BusinessVO seller, int bo_num, int li_state);



	

	

	





//	BoardVO getBoard(int bo_num, MemberVO user, BusinessVO seller);





	

	

}
