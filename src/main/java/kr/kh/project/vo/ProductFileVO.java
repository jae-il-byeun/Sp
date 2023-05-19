package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductFileVO {

	Integer file_num;
	String file_name;
	String file_location;
	String file_originName;
	String file_size;
	
	Integer pf_product_num;
	Integer pf_file_num;
	
	public ProductFileVO(String file_originName, String file_name, String file_location, String file_size, Integer pf_product_num) {
		this.file_originName = file_originName;
		this.file_name = file_name;
		this.file_location = file_location;
		this.file_size = file_size;
		this.pf_product_num = pf_product_num;
	}
}
