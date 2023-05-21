package kr.kh.project.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;
//import kr.kh.project.vo.BusinessVO;

public interface ProductService {

	ProductVO productInsert(ProductVO params, MultipartFile[] files);
	
	ProductRoomsVO productRoomInsert(ProductRoomsVO room, MultipartFile[] files);

	ArrayList<Map<String, Object>> getProductList(Map<String, Object> data);

	ArrayList<LocationVO> getLocationNum();
	ArrayList<detailLocationVO> getDetailLocation(int lo_num);

	//boolean productRommsInsert(ProductRoomsVO params);

}