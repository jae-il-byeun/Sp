package kr.kh.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;

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

	Integer insertProduct(@Param("param")ProductVO param);
	
	Integer insertProductRooms(@Param("room")ProductRoomsVO room);

}
