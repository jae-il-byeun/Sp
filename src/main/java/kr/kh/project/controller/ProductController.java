package kr.kh.project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.project.vo.HotelRoomsVO;

@Controller
public class ProductController {
	
	@RequestMapping(value="/product/hotel",method=RequestMethod.GET)
    public ModelAndView hotel(ModelAndView mv) {
		mv.setViewName("/product/hotel");
		return mv;
    }
	
	@RequestMapping(value = "/product/hotelIntro", method = RequestMethod.GET)
	public ModelAndView hotelIntro(ModelAndView mv) {
		mv.setViewName("/product/hotelIntro");
		return mv;
	}
	@RequestMapping(value="/product/hotelUpload",method=RequestMethod.GET)
    public ModelAndView hotelUpload(ModelAndView mv) {
		mv.setViewName("/product/hotelUpload");
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

	@RequestMapping(value="/product/hotelUpload",method=RequestMethod.GET)
    public ModelAndView hotelUpload2(ModelAndView mv) {
		mv.setViewName("/product/hotelUpload");
		return mv;
    }
	
	@ResponseBody
	@RequestMapping(value="/product/hotelUploadData",method= RequestMethod.POST)
	public boolean HotelUploadData(@RequestBody Map<String, Object> params) {		
		String product_title = (String)params.get("product_title");
		String product_service_type = (String)params.get("product_service_type");
		String product_detail = (String)params.get("product_detail");
		MultipartFile[] product_images = (MultipartFile[])params.get("product_images");
		List<HotelRoomsVO> product_rooms = (List<HotelRoomsVO>)params.get("product_rooms");
		
		return true;
	}
}
