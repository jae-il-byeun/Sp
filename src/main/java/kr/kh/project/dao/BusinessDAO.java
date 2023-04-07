package kr.kh.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;

public interface BusinessDAO {

	int insertBusiness(@Param("seller")BusinessVO seller);

	BusinessVO selectBusinessById(@Param("bi_id")String bi_id);
	
	boolean insertBiAuNumVO(String chekNum);	

	AuNumVO selectBusinessCheck(@Param("che")AuNumVO che);

	void deleteBusinessCheck(@Param("che")AuNumVO che);

}