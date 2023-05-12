package kr.kh.project.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {
	String product_type;
	String product_title;
	String product_service_type;
	MultipartFile[] product_images;
	String product_detail;
	ProductRoomsVO[] product_rooms;
}