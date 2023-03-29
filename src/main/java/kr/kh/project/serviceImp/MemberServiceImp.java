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
			String newPw = passwordEncoder.encode(member.getMe_pw());
			member.setMe_pw(newPw);
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

	@Override
	public void emailAuthentication(String me_id, String me_email) {
		// TODO Auto-generated method stub
		
	}

}
