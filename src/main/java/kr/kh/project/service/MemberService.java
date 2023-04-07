package kr.kh.project.service;

import kr.kh.project.vo.MemberVO;

public interface MemberService {

	boolean memberjoin(MemberVO member);

	boolean checkId(MemberVO user);

	MemberVO login(MemberVO member);

	String emailAuCheck(String me_email);



	



	

}
