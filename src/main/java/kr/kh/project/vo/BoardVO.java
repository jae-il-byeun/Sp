package kr.kh.project.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	int bo_num;
	String bo_name;
	String bo_title;
	String bo_writer;
	int bo_up;
	int bo_down;
	Date bo_record_date;
	Date bo_update_date;
	int bo_views;
}