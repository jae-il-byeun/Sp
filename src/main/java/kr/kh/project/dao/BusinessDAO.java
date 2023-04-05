package kr.kh.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;

public interface BusinessDAO {

	int insertBusiness(@Param("seller")BusinessVO seller);

	MemberVO selectBusinessById(@Param("bi_id")String bi_id);
	
	void insertAuNumVO(@Param("che")AuNumVO che);

	AuNumVO selectBusinessCheck(@Param("che")AuNumVO che);

	void deleteBusinessCheck(@Param("che")AuNumVO che);

	




}
