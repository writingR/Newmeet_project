package com.user.main.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.user.main.domain.Member;

@Service("mailSenderService")
public class MailSenderService {

	@Autowired
	private JavaMailSender sender;
	
	public int send(Member mem) {

		int result = 0;

		MimeMessage msg = sender.createMimeMessage();


		/* String id = mem.getNemail() + " 님"; */

		String nemail = mem.getNemail();

		String code = mem.getCode();
		try {

			msg.setSubject("[뉴 밋] 본인 인증 메일",	"utf-8");

			String body = "뉴밋 본인 인증 확인 메일입니다. 인증하기를 원하시면 아래의 인증하기 버튼을 눌러주세요<br>\n";

			body += "<a href=\"http://localhost:8080/main/mem/verify?nemail="+nemail+"&code="+code+"\">인증하기 클릭</a>";

			msg.setText(body, "utf-8", "html");

			msg.addRecipient(RecipientType.TO, new InternetAddress(nemail,"utf-8"));

			sender.send(msg);

		} catch (MessagingException e) {

			e.printStackTrace();

		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();

		}

		

		return 1;

	}
	
}
