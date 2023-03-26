package kr.kh.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.MemberVO;

public interface MemberDAO {

	int insertMember(@Param("member")MemberVO member);

}
