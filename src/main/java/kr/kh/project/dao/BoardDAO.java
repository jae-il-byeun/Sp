package kr.kh.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.FileVO;

public interface BoardDAO {

	ArrayList<BoardVO> selectBoardList(@Param("cri")Criteria cri);

	int selectBoardTotalCount(@Param("cri") Criteria cri);

	ArrayList<BoardTypeVO> selectAllBoardType(@Param("au") int me_authority);

//	BoardVO selectBoardList(@Param("bo")int bo_num);

	BoardTypeVO selectBoardType(@Param("btn")int bo_bt_num);

	ArrayList<BoardTypeVO> selectBoardListType();
	
	
	void userInsertBoard(@Param("bo")BoardVO board);
	void sellerInsertBoard(@Param("bo")BoardVO board);
	
	void insertFile(@Param("file")FileVO fileVo);
	ArrayList<FileVO> selectBoardFileNum(@Param("fn")String fileName);
	void insertBoardFile(@Param("bn")Integer bo_num, @Param("file")int file_num, @Param("ft")String file_type);

	ArrayList<BoardTypeVO> selectChooseBoardType(@Param("bs_au")int me_authority);



//	void updateBoardViews(@Param("bo_num")int bo_num);

//	BoardVO selectBoard(@Param("bo_num")int bo_num);



}
