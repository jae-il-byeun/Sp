package kr.kh.project.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardFileVO;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LikesVO;

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

	void updateBoardViews(@Param("bo_num")int bo_num);

	BoardVO selectBoard(@Param("bo_num")int bo_num);

	ArrayList<Map<String, Object>> selectBftnf(@Param("bo")int bo_num);

	ArrayList<Map<String, Object>> selectFileList(@Param("bo_num")int bo_num);

	boolean deleteBoard(@Param("bo_num")int bo_num);


	void deleteFile(@Param("fi")Map<String, Object> file);

	void deleteBoardFile(@Param("fn")Integer fn);

	void deleteOri(@Param("bo_num")int bo_num);

	LikesVO selectLikesByUserId(@Param("lm")String me_id,@Param("li_bo_num") int bo_num);

	LikesVO selectLikesBySellerId(@Param("lb")String bi_id,@Param("li_bo_num") int bo_num);



//	void updateBoardViews(@Param("bo_num")int bo_num);

//	BoardVO selectBoard(@Param("bo_num")int bo_num);



}

	
