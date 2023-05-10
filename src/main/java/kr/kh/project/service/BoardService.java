package kr.kh.project.service;

import java.util.ArrayList;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.MemberVO;

public interface BoardService {

	ArrayList<BoardVO> getBoardList(Criteria cri);

	int getBoardTotalCount(Criteria cri);

	ArrayList<BoardTypeVO> getBoardType(int authority);

	BoardVO getBoard(int bo_ori_num, MemberVO user);

}
