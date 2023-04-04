package kr.kh.project.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import kr.kh.project.dao.MemberDAO;
import kr.kh.project.service.MemberService;
import kr.kh.project.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public boolean memberjoin(MemberVO member) {
			if(member == null)
				return false;

			member.setMe_rrn( member.getMe_rrnFront()+ "-" + member.getMe_rrnBack());
			member.setMe_email(member.getMe_emailId()+ "@" + member.getMe_domain());
			member.setMe_birth(member.getMe_year() + member.getMe_month() + member.getMe_day());
			member.setMe_gender(member.getG_check());
			if(memberDao.insertMember(member) != 0) {
				return true;
			}
		
		return false;
	}

	@Override
	public boolean checkId(MemberVO user) {
		if(user == null || user.getMe_id() == null || user.getMe_id().trim().length() == 0)
			return false;
		
		
		return memberDao.selectMemberById(user.getMe_id()) == null;
	}

	
}
