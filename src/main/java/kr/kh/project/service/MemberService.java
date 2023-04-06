package kr.kh.project.service;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.MemberVO;

public interface MemberService {

	boolean memberjoin(MemberVO member);

	boolean checkId(MemberVO user);

	void emailAuthentication(String me_id, String me_email);

	boolean emailAuthenticationConfirm(AuNumVO che);


	



	

}
