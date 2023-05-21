package kr.kh.project.vo;

import lombok.Data;

@Data
public class BoardFileVO {
	Integer bf_bo_num;
	Integer bf_fi_num;
	String bf_type;
	
	public BoardFileVO(Integer bf_bo_num,Integer bf_fi_num, String bf_type) {
		this.bf_bo_num = bf_bo_num;
		this.bf_fi_num = bf_fi_num;
		this.bf_type = bf_type;
	}
	
}