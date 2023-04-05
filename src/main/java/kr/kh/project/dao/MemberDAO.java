package kr.kh.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.MemberVO;

public interface MemberDAO {

	int insertMember(@Param("member")MemberVO member);

	MemberVO selectMemberById(@Param("me_id")String me_id);
	
	void insertAuNumVO(@Param("che")AuNumVO che);

	AuNumVO selectMemberCheck(@Param("che")AuNumVO che);

	void deleteMemberCheck(@Param("che")AuNumVO che);




}
