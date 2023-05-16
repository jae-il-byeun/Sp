package kr.kh.project.vo;

import lombok.Data;

@Data
public class BoardTypeVO {
	//sql의 속성을 보고 타입에 맞게 변수설정
	int bt_num;
	String bt_type;
	String bt_name;
	int bt_read_authority;
	int bt_writer_authority;
	
	public String getBt_r_authority_str() {
		return getAuthority(bt_read_authority);
	}
	public String getBt_w_authority_str() {
			return getAuthority(bt_writer_authority);
	}
	private String getAuthority(int authority) {
		switch(authority) {
		case 0: return "관리자";
		case 1: return "회원";
		case 2: return "사업자";
		case 9: return "비회원";
		
		}
		return"";
	}
}