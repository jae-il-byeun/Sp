package kr.kh.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.vo.ProductVO;
import kr.kh.project.service.ProductService;
import kr.kh.project.vo.LocationVO;
import kr.kh.project.vo.ProductRoomsVO;

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
//		int seller_authority = (Integer)session.getAttribute("au");
//		ArrayList<LocationVO> location_list = productService.getLocation(seller_authority);
//	
//		mv.addObject("location_list",location_list);
//		
		mv.setViewName("/product/productUpload");
		return mv;
    }


	
	@ResponseBody
	@RequestMapping(value="/product/productUploadData",method= RequestMethod.POST)
	public Map<String, Object> ProductUploadData(@RequestBody ProductVO params) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String product_title = params.getProduct_title();
		String product_service_type = params.getProduct_service_type();
		String product_detail = params.getProduct_detail();
		MultipartFile[] product_images = params.getProduct_images();
		ProductRoomsVO[] product_rooms = params.getProduct_rooms();
		
		
		
		
		map.put("result", true);
		return map;
	}
}
