package kr.kh.project.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuNumVO {

	String au_echeck;
	Date au_delay;
	
	public AuNumVO(String au_echeck) {
		this.au_echeck = au_echeck;
		this.au_delay = new Date();
		
	}


	
}