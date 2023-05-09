package kr.kh.project.service;

import java.util.ArrayList;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardVO;

public interface BoardService {

	ArrayList<BoardVO> getBoardList(Criteria cri);

	int getBoardTotalCount(Criteria cri);

}
