package kr.kh.project.vo;

import java.util.Date;

import lombok.Data;

@Data
public class TrafficVO {
	String bs_st;
	String bs_sv;
	String bs_at;
	String bs_av;
	Date bs_rd;
	Date bs_delay;
	
	
}
