package kr.kh.project.serviceImp;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.BusinessDAO;
import kr.kh.project.service.BusinessService;
import kr.kh.project.vo.AuNumVO;
import kr.kh.project.vo.BusinessVO;


@Service
public class BusinessServiceImp implements BusinessService{

	@Autowired
	BusinessDAO businessDao;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public boolean businessjoin(BusinessVO seller) {
			if(seller == null)
				return false;

			seller.setBi_email(seller.getBi_emailId()+ "@" + seller.getBi_domain());
			seller.setBi_address(seller.getBi_postNum()+ seller.getBi_mainAddress()+seller.getBi_detailAddress()+seller.getBi_extraAddress());
			if(businessDao.insertBusiness(seller) != 0) {
				return true;
			}
		
		return false;
	}

	@Override
	public boolean checkBiId(BusinessVO seller) {
		if(seller == null || seller.getBi_id() == null || seller.getBi_id().trim().length() == 0)
			return false;
		
		
		return businessDao.selectBusinessById(seller.getBi_id()) == null;
	}

	@Override
	public void emailAuthentication(String bi_id, String bi_email) {
		String str = authenticationNumber();
		AuNumVO che = new AuNumVO(bi_id, str);
		businessDao.insertAuNumVO(che);
		
		String title = "Repose / email check";
		String content = "링크를 클릭해서 인증완료하세요.<br>" +
						 "<a href = 'http://loacalhost:8080/project/email?mo_num=" + str + "mo_bi_id=" + bi_id+"'>인증완료하기</a>";
		sendEmail(title,content,bi_email);
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
		AuNumVO dbChe = businessDao.selectBusinessCheck(che);
		System.out.println("DB에서 가져온 인증 정보 : " + dbChe);
		if(dbChe != null) {
			businessDao.deleteBusinessCheck(che);
			return true;
		}
		return false;
	}

	
}