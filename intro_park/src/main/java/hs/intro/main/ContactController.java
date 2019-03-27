package hs.intro.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import hs.intro.mapper.ContactMapper;


@RestController
public class ContactController {
	@Autowired
    private ContactMapper contactMapper;

	@RequestMapping(value="/contact",  method = RequestMethod.POST)
	@ResponseBody
	public String contact(@RequestBody ContactVO contactvo) throws Exception {

		int insertResult = contactMapper.contactInsert(contactvo);
		String result = "";

		if(insertResult > 0){
			result = "OK";
		}else{
			result = "FAIL";
		}


		return result;
    }


}


