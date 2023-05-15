package kr.kh.project.service;

import java.util.ArrayList;

import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductVO;
//import kr.kh.project.vo.ProductRoomsVO;

public interface ProductService {

	boolean productInsert(ProductVO params);

	ArrayList<LocationVO> getLocationNum();

	
	
	//boolean productRommsInsert(ProductRoomsVO params);

}
