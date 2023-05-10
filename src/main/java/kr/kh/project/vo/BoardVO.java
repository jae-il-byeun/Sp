package kr.kh.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	int bo_num;
	String bo_title;
	String bo_content;
	Date bo_record_date;
	Date bo_update_date;
	int bo_views;
	int bo_up;
	int bo_down;
	int bo_ori_num;
	String bo_me_num;
	String bo_bi_num;
	int bo_bt_num;
	String bt_name;
	
	public String getBo_register_date_str() { // 그리고 겟터를 만들어줌
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(bo_record_date);
	}
}