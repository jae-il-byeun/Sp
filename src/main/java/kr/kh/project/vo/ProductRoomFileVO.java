package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductRoomFileVO {	
	Integer rf_r_num;
	Integer rf_file_num;
	
	public ProductRoomFileVO(Integer rf_r_num, Integer rf_file_num) {
		this.rf_r_num = rf_r_num;
		this.rf_file_num = rf_file_num;
	}
}