package kr.kh.project.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.MemberDAO;
import kr.kh.project.service.MemberService;
import kr.kh.project.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Override
	public boolean memberjoin(MemberVO member) {
			if(member == null)
				return false;
			
			if(memberDao.insertMember(member) != 0) {
				return true;
			}
		
		return false;
	}
	
}
