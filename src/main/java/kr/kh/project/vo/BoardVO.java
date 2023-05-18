package kr.kh.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	int bo_num;
	String bo_name;
	String bo_content;
	String bo_record_date;
	String bo_update_date;
	int bo_views;
	int bo_up;
	int bo_down;
	int bo_ori_num;
	String bo_me_id;
	String bo_bi_id;
	int bo_bt_num;
	String bt_name;
	
	public String getBo_record_date_str() { // 그리고 겟터를 만들어줌
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(bo_record_date);
	}
}