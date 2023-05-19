package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductRoomFileVO {

	Integer file_num;
	String file_name;
	String file_location;
	String file_originName;
	String file_size;
	
	Integer rf_r_num;
	Integer rf_file_num;
	
	public ProductRoomFileVO(String file_originName, String file_name, String file_location, String file_size, Integer rf_r_num) {
		this.file_originName = file_originName;
		this.file_name = file_name;
		this.file_location = file_location;
		this.file_size = file_size;
		this.rf_r_num = rf_r_num;
	}
}