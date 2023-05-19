package kr.kh.project.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class ProductVO {
	Integer product_num;
	String product_type;
	String product_name;
	String product_service;
	MultipartFile[] product_images;
	String product_content;
	String bi_id;
	ProductRoomsVO[] product_rooms;
	Integer product_lo_num;
	Integer product_dl_num;
	String product_postNum;
	String product_mainAddress;
	String product_detailAddress;
	String product_extraAddress;
}