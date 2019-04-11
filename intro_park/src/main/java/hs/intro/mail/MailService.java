package hs.intro.mail;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;


@Component
@PropertySource("classpath:application.yml")
public class MailService
{
	@Autowired
	JavaMailSender javaMailSender;

	@Value("${spring.mail.username}")
	String from;

	public boolean sendMail(String to, String subject, String content)
	{
		MimeMessagePreparator preparator = new MimeMessagePreparator()
		{
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception
			{
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
				mimeMessage.setFrom(new InternetAddress(from,"박홍순(관리자)"));
				mimeMessage.setSubject(subject);
				mimeMessage.setText(content, "utf-8", "html");
			}
		};

		try
		{
			javaMailSender.send(preparator);
			return true;
		}
		catch (MailException me)
		{
			return false;
		}
	}
}





