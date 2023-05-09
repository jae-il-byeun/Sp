package kr.kh.project.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.BoardDAO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.service.BoardService;
import kr.kh.project.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

	@Override
	public ArrayList<BoardVO> getBoardList(Criteria cri) {
		if(cri == null)
			cri = new Criteria();
		return boardDao.selectBoardList(cri);
	}

	@Override
	public int getBoardTotalCount(Criteria cri) {
		return boardDao.selectBoardTotalCount(cri);
	}

}
