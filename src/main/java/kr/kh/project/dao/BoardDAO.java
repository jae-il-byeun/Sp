package kr.kh.project.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.pagination.Criteria;
import kr.kh.project.vo.BoardFileVO;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LikesSellerVO;
import kr.kh.project.vo.LikesUserVO;

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
	
	ArrayList<Map<String, Object>> selectExtraFileList(@Param("bo")int bo_num);

	ArrayList<Map<String, Object>> selectImegeFileList(@Param("bo")int bo_num);
	
	boolean deleteBoard(@Param("bo_num")int bo_num);


	void deleteFile(@Param("fi")Map<String, Object> file);

	void deleteBoardFile(@Param("fn")Integer fn);

	void deleteOri(@Param("bo_num")int bo_num);

	LikesUserVO selectLikesByUserId(@Param("li_bo_num") int bo_num, @Param("lm")String me_id);

	LikesSellerVO selectLikesBySellerId(@Param("li_bo_num") int bo_num, @Param("lb")String bi_id);

	void insertUserLikes(@Param("li")LikesUserVO likesVo);
	
	void insertSellerLikes(@Param("li")LikesSellerVO likesVo);

	void updateUserLikes(@Param("li")LikesUserVO likesVo);

	void updateSellerLikes(@Param("li")LikesSellerVO likesVo);

	void updateBoardByLikes(@Param("bo_num")int bo_num);

	int updateBoard(@Param("bo")BoardVO board);

	ArrayList<FileVO> selectFile(@Param("fi")int fileNum);

	void deleteFileList(@Param("fi")Integer file_num);

	



//	void updateBoardViews(@Param("bo_num")int bo_num);

//	BoardVO selectBoard(@Param("bo_num")int bo_num);



}

	
