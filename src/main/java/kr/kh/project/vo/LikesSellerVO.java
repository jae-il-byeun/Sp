package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LikesSellerVO {
	int li_num;
	int li_state;
	String li_bi_id;
	int li_bo_num;
	
	public LikesSellerVO( int li_state, String li_bi_id, int li_bo_num) {
		this.li_state =li_state;
		this.li_bi_id = li_bi_id;
		this.li_bo_num = li_bo_num;
	}
	
}
