package kr.kh.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
//import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.detailLocationVO;
import kr.kh.project.service.ProductService;
import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.BusinessVO;
//import kr.kh.project.vo.ProductRoomsVO;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/product/hotel",method=RequestMethod.GET)
    public ModelAndView hotel(ModelAndView mv) {
		mv.setViewName("/product/hotel");
		return mv;
    }
	@RequestMapping(value = "/product/motel", method = RequestMethod.GET)
	public ModelAndView motel(ModelAndView mv) {
		mv.setViewName("/product/motel");
		return mv;
	}
	@RequestMapping(value = "/product/pention", method = RequestMethod.GET)
	public ModelAndView pention(ModelAndView mv) {
		mv.setViewName("/product/pention");
		return mv;
	}
	
	@RequestMapping(value = "/product/hotelIntro", method = RequestMethod.GET)
	public ModelAndView hotelIntro(ModelAndView mv) {
		mv.setViewName("/product/hotelIntro");
		return mv;
	}
	@RequestMapping(value="/product/productUpload",method=RequestMethod.GET)
    public ModelAndView productUpload(ModelAndView mv,HttpSession session) {
	
		ArrayList<LocationVO> location_list = productService.getLocationNum(); 
//		ArrayList<detailLocationVO> detailLocation_list = productService.getDetailLocationNum();
		
		//System.out.println(location_list);
		mv.addObject("location_list",location_list);
		mv.setViewName("/product/productUpload");
		return mv;
    }
	
	@ResponseBody
	@RequestMapping(value = "/product/detailLocation", method = RequestMethod.POST)
	public ArrayList<detailLocationVO> detailLocation(@RequestBody int lo_num ) {
		//System.out.println("현재 필요 " + lo_num);
		// string lo_num을 int형태로 바꾸는 구문
//		int dl_lo_num = Integer.parseInt(lo_num);
		//HashMap<String, Object> result = new HashMap<String, Object>();
		ArrayList<detailLocationVO> detailLocationList = productService.getDetailLocation(lo_num);
		//System.out.println("detail : " + detailLocationList);
		return detailLocationList;
	}

	@ResponseBody
	@RequestMapping(value="/product/productUploadData",method= RequestMethod.POST)
	public Map<String, Object> ProductUploadData(@RequestPart("params")ProductVO params, @RequestPart("files")MultipartFile[] files, HttpSession session) {
		System.out.println("productUploadData");
		System.out.println(params);
		System.out.println(files);

		HashMap<String, Object> map = new HashMap<String, Object>();
		
		BusinessVO seller = (BusinessVO)session.getAttribute("seller");
		if(seller == null || seller.getBi_id() == null)
		{
			map.put("result", false);
			map.put("msg", "사업자 로그인 상태가 아닙니다.");
			return map;
		}
		params.setProduct_bi_id(seller.getBi_id());	
		map.put("result", true);
		map.put("product_num", productService.productInsert(params, files).getProduct_num());
		System.out.println(map);
		System.out.println("-------------------");
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/product/productRoomUploadData",method= RequestMethod.POST)
	public Map<String, Object> ProductRoomUploadData(@RequestPart("room")ProductRoomsVO room, @RequestPart("files")MultipartFile[] files, HttpSession session) {
		System.out.println("ProductRoomUploadData");
		System.out.println(room);
		System.out.println(files);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", productService.productRoomInsert(room, files).getR_num() > 0 ? true : false);
		System.out.println(map);
		System.out.println("-------------------");
		return map;
	}
}
