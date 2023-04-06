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
	public void emailAuthentication(String me_id, String me_email) {
		String str = authenticationNumber();
		AuNumVO che = new AuNumVO(me_id, str);
		memberDao.insertAuNumVO(che);
		
		String title = "Repose / email check";
		String content = "링크를 클릭해서 인증완료하세요.<br>" +
						 "<a href = 'http://loacalhost:8080/project/email?mo_num=" + str + "mo_me_id=" + me_id+"'>인증완료하기</a>";
		sendEmail(title,content,me_email);
	}
	private String authenticationNumber() {
		String str ="";
		int max = 61, min = 0;
		while(str.length() != 6) {
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
	public boolean emailAuthenticationConfirm(AuNumVO che) {
		if(che == null)
			return false;
		AuNumVO dbChe = memberDao.selectMemberCheck(che);
		System.out.println("DB에서 가져온 인증 정보 : " + dbChe);
		if(dbChe != null) {
			memberDao.deleteMemberCheck(che);
			return true;
		}
		return false;
	}

	
}