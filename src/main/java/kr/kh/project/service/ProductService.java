package kr.kh.project.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;
//import kr.kh.project.vo.BusinessVO;

public interface ProductService {

	ProductVO productInsert(ProductVO params, MultipartFile[] files);
	
	ProductRoomsVO productRoomInsert(ProductRoomsVO room, MultipartFile[] files);

	ArrayList<Map<String, Object>> getProductList(Map<String, Object> data);

	ProductVO productSelect(int product_num);
	ArrayList<FileVO> productFileSelect(int product_num);
	ArrayList<ProductRoomsVO> productRoomsSelect(int product_num);
	ArrayList<FileVO> productRoomFileSelect(int r_num);

	ArrayList<LocationVO> getLocationNum();
	ArrayList<detailLocationVO> getDetailLocation(int lo_num);

	//boolean productRommsInsert(ProductRoomsVO params);

}