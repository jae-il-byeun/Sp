package kr.kh.project.service;

import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.BusinessVO;

public interface BusinessService {

	boolean businessjoin(BusinessVO seller);

	boolean checkBiId(BusinessVO seller);

	void emailAuthentication(String bi_id, String bi_email);

	boolean emailAuthenticationConfirm(AuNumVO che);

	



	

}
