package kr.kh.project.service;

import java.util.ArrayList;

import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductVO;
//import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;
//import kr.kh.project.vo.BusinessVO;

public interface ProductService {

	boolean productInsert(ProductVO params);

	ArrayList<LocationVO> getLocationNum();

	

	ArrayList<detailLocationVO> getDetailLocation(int lo_num);

	
	
	//boolean productRommsInsert(ProductRoomsVO params);

}
