package kr.kh.project.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.kh.project.dao.MemberDAO;
import kr.kh.project.dao.TrafficDAO;
import kr.kh.project.service.TrafficService;
import kr.kh.project.vo.TrafficVO;

@Service
public class TrafficServiceImp implements TrafficService{

	@Autowired
	TrafficDAO trafficDao;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public String nowSeat(TrafficVO seat) {

		return "";
	}
	


}