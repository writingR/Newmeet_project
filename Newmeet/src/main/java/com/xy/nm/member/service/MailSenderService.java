package com.xy.nm.member.service;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.xy.nm.member.dao.MemberInterDao;
import com.xy.nm.member.domain.Member;

@Service("mailSenderService")
public class MailSenderService {

   @Autowired
   private JavaMailSender sender;
   
   public void setSender(JavaMailSender sender) {
         this.sender = sender;
   }
   
   public int send(Member mem) {

      int result = 0;

      MimeMessage msg = sender.createMimeMessage();


      String nic = mem.getNnic() + " 고객님";

      String nemail = mem.getNemail();

      String code = mem.getCode();
      try {

         msg.setSubject("[뉴 밋] 본인 인증 메일",   "utf-8");

         String body = "뉴밋에서 보내는 인증확인 메일입니다. 서비스를 원하시면 확인버튼을 눌러주세요 :><br>\n";

         body += "<a href=\"/nm/verify?nemail="+nemail+"&code="+code+"\">인증하러가기!</a>";

         msg.setText(body, "utf-8", "html");

         msg.addRecipient(RecipientType.TO, new InternetAddress(nemail,nic,"utf-8"));

         sender.send(msg);

      } catch (MessagingException e) {

         e.printStackTrace();

      } catch (UnsupportedEncodingException e) {

         e.printStackTrace();

      }

      

      return 1;

   }
   
   
   
   
   public int sendPw(Member mem, String string) {

      int result = 0;

      MimeMessage msg = sender.createMimeMessage();


      String nic = mem.getNnic() + " 고객님";

      String nemail = mem.getNemail();

      String npw = mem.getNpw();
      try {

         msg.setSubject("[뉴 밋] 임시 비밀번호 전송",   "utf-8");

         String body = "뉴밋에서 임시비밀번호를 전송해드립니다. 임시비밀번호는 "+ npw +"입니다.<br>\n";

         /*
          * body +=
          * "<a href=\"http://localhost:8080/nm/verify?nemail="+nemail+"&code="+code+
          * "\">인증하러가기!</a>";
          */

         msg.setText(body, "utf-8", "html");

         msg.addRecipient(RecipientType.TO, new InternetAddress(nemail,nic,"utf-8"));

         sender.send(msg);

      } catch (MessagingException e) {

         e.printStackTrace();

      } catch (UnsupportedEncodingException e) {

         e.printStackTrace();

      }

      

      return 1;

   }
   
   
    
}