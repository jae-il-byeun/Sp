package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductFileVO {	
	Integer pf_product_num;
	Integer pf_file_num;
	
	public ProductFileVO(Integer pf_product_num, Integer pf_file_num) {
		this.pf_product_num = pf_product_num;
		this.pf_file_num = pf_file_num;
	}
}