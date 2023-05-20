package kr.kh.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.detailLocationVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.ProductFileVO;
import kr.kh.project.vo.ProductRoomFileVO;

public interface ProductDAO {

	ArrayList<LocationVO> selectLocation();
/*
	ArrayList<BoardVO> selectBoardList(@Param("cri") Criteria cri);

	int selectBoardTotalCount(@Param("cri") Criteria cri);

	ArrayList<BoardTypeVO> selectAllBoardType(@Param("au") int me_authority);

	BoardVO selectBoardList(@Param("bo")int bo_num);

	BoardTypeVO selectBoardType(@Param("bo_bt_num")int bo_bt_num);

	void insertBoard(@Param("bo")BoardVO board);
*/
//	ArrayList<LocationVO> selectLocationNum(@Param("sa")int seller_authority);

	ArrayList<detailLocationVO> selectDetailLocation(@Param("lo_num")int lo_num);

	void insertProduct(@Param("param")ProductVO param);
	
	void insertProductRoom(@Param("room")ProductRoomsVO room);
	
	void insertFile(@Param("fileVo")FileVO fileVo);
	
	void insertProductFile(@Param("p_fileVo")ProductFileVO p_fileVo);
	void insertProductRoomFile(@Param("p_r_fileVo")ProductRoomFileVO p_r_fileVo);

}
