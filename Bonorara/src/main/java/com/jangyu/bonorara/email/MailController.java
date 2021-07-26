package com.jangyu.bonorara.email;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MailController {
	
	@Autowired 
	private JavaMailSenderImpl mailSender;
	private CertiCodeMaker certiCodeMaker = new CertiCodeMaker();
	
	@PostMapping("/sendMail.do")
	public Map<String, Object> sendMail(String email) {
		Map<String, Object> map = new HashMap<>();
		String certiCode = certiCodeMaker.makeCertiCode();
		map.put("code", certiCode);
		
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
				
				helper.setFrom("Bonorara <bonorara@gmail.com>"); 
				helper.setTo(email); 
				helper.setSubject("Bonorara 회원가입 인증번호입니다."); 
				helper.setText("Bonorara 회원가입 인증번호입니다: ["+ certiCode +"] 유출되지 않도록 조심해주세요!", true); 
			} 
		};
		
		mailSender.send(preparator);
		
		return map;
	}
	
}
