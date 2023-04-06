package kr.kh.project.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuNumVO {
	String au_me_num;
	String au_bi_num;
	int au_eCheck;
	Date au_delay;
	
	public AuNumVO(String au_me_num, String au_bi_num, int au_echeck) {
		this.au_me_num = au_me_num;
		this.au_bi_num = au_bi_num;
		this.au_eCheck = au_echeck;
		this.au_delay = new Date();
		
	}

	public AuNumVO(String me_id, String str) {
		// TODO Auto-generated constructor stub
	}
	
}