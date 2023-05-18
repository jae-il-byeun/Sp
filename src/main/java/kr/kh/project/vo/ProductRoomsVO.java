package kr.kh.project.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductRoomsVO {
	Integer num;
	MultipartFile[] files;
	String title;
	Integer price;
	String intro;
	
	Integer product_num;
}