package kr.kh.project.serviceImp;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.MemberDAO;
import kr.kh.project.service.MemberService;
import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	@Autowired
	private JavaMailSender mailSender;
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


	@Override
	public String emailAuCheck(String me_email) {
		String chekNum = authenticationNumber();
//		AuNumVO cn = new AuNumVO();
//		cn.setAu_echeck(chekNum);
//		AunumVo auCheck = memberDao.insertAuNumVO(cn);
		//MyBatis에서는 SQL 쿼리의 실행 결과를 자바 객체로 매핑하기 위해 void, int, long, boolean, java.util.Map, java.util.List 등의 타입을 지원
//		
//		boolean auCheck = memberDao.insertAuNumVO(chekNum);
//		System.out.println(auCheck);
		
		String title = "Repose / email check";
		String content = " 인증번호를 입력하세요.<br>"  + chekNum ;
		sendEmail(title,content,me_email);
		return chekNum;

	}
	
	
	private String authenticationNumber() {
		String str ="";
		int max = 61, min = 0;
		while(str.length() != 4) {
			int r =(int)(Math.random()*(max-min + 1)+ min);
			if(r<=9) {
				str  += r;
			}else if(r <= 35) {
				str +=(char)('a'+(r-10));
			}else {
				str +=(char)('A'+(r-36));
			}
		}
		return str;
	}
	private void sendEmail(String title, String content, String email) {
		String setfrom ="wdhefosiyngf@gmail.com";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true,"UTF-8");
			messageHelper.setFrom(setfrom);
			messageHelper.setTo(email);
			messageHelper.setSubject(title);
			messageHelper.setText(content, true);
			mailSender.send(message);
		}catch(Exception e) {
			System.out.println(e);
		}
	}



	@Override
	public MemberVO login(MemberVO member) {
		if(member == null || member.getMe_id() == null || member.getMe_pw() == null)
			return null;
		MemberVO dbMember = memberDao.selectMemberById(member.getMe_id());
		if(dbMember == null)
			return null;
		
		if(passwordEncoder.matches(member.getMe_pw(), dbMember.getMe_pw()))
				return dbMember;
		return dbMember;
	}


}