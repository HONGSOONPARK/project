package hs.intro.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import hs.intro.mail.MailService;
import hs.intro.mapper.ContactMapper;


@RestController
public class ContactController {
	@Autowired
    private ContactMapper contactMapper;

	@Autowired
	MailService mailService;


	@RequestMapping(value="/contact",  method = RequestMethod.POST)
	@ResponseBody
	public String contact(@RequestBody ContactVO contactvo) throws Exception {

		String result = "";
		String msg = "<html><head></head><body>";

		msg += "<div style='white-space:pre-line'>";
		msg += "<p>보낸사람 :"+contactvo.getName()+"</p>";
		msg += "<p>이메일 :"+contactvo.getEmail()+"</p>";
		msg += "<p>내용</p>";
		msg += "<p>"+contactvo.getMessage()+"</p>";
		msg += "</div>";
		msg += "</body></html>";


		boolean mailCheck = mailService.sendMail("phs39@naver.com", contactvo.getSubject(), msg);

		if(mailCheck){
			int insertResult = contactMapper.contactInsert(contactvo);
			if(insertResult > 0){
				result = "OK";
			}else{
				result = "FAIL";
			}
		}else{
			result = "FAIL";
		}


		return result;
    }


}


