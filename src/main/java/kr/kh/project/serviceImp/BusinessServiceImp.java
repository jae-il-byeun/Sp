package kr.kh.project.serviceImp;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.BusinessDAO;
import kr.kh.project.service.BusinessService;
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
			seller.setBi_brn(seller.getBi_brn_front()+seller.getBi_brn_middle()+seller.getBi_brn_back());
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
	public String biEmailAuCheck(String bi_email) {
		String chekNum = authenticationNumber();
		//MyBatis에서는 SQL 쿼리의 실행 결과를 자바 객체로 매핑하기 위해 void, int, long, boolean, java.util.Map, java.util.List 등의 타입을 지원

			String title = "Repose / email check";
			String content = " 인증번호를 입력하세요.<br>"  + chekNum ;
			sendEmail(title,content,bi_email);
			return chekNum;

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
	public BusinessVO businesslogin(BusinessVO seller) {
		if(seller == null || seller.getBi_id() == null || seller.getBi_pw() == null)
			return null;
		BusinessVO dbseller = businessDao.selectBusinessById(seller.getBi_id());
		System.out.println(dbseller);
		if(dbseller == null)
			return null;
		
		if(passwordEncoder.matches(seller.getBi_pw(), dbseller.getBi_pw()))
				return dbseller;
		return dbseller;
	}
	


	
}