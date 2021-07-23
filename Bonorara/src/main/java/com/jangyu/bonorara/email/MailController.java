package com.jangyu.bonorara.email;

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
	
	@PostMapping("/sendMail.do")
	public String sendMail(String email) {
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
				helper.setFrom("Bonorara <bonorara@gmail.com>"); 
				helper.setTo(email); 
				helper.setSubject("Bonorara 회원가입 인증번호입니다."); 
				helper.setText("인증번호", true); 
			} 
		};
		
		mailSender.send(preparator);
		
		return "result";
	}
	
}
