package kr.kh.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.MemberVO;

public interface MemberDAO {

	int insertMember(@Param("member")MemberVO member);

	MemberVO selectMemberById(@Param("me_id")String me_id);
	
	
//	AuNumVO insertAuNumVO(@Param("cn")String chekNum);
	boolean insertAuNumVO(String chekNum);

	AuNumVO selectMemberCheck(@Param("ck")AuNumVO au_echeck);



	

	



}
