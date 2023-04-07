
package kr.kh.project.service;

import kr.kh.project.vo.BusinessVO;

public interface BusinessService {

	boolean businessjoin(BusinessVO seller);

	boolean checkBiId(BusinessVO seller);

	BusinessVO businesslogin(BusinessVO seller);

	String biEmailAuCheck(String bi_email);

	



	

}