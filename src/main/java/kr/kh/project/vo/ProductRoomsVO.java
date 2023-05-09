package kr.kh.project.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductRoomsVO {
	MultipartFile[] files;
	String title;
	int price;
	String detail;
}