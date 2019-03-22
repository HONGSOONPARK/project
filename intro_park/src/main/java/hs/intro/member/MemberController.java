package hs.intro.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hs.intro.mapper.MemberMapper;


@RestController
public class MemberController {

    @Autowired
    private MemberMapper memberMapper;

    @RequestMapping("/member")
    public List<MemberVO> member() throws Exception{
    	MemberVO vo = new MemberVO();
    	vo.setMember_id("admin");
        List<MemberVO> member = memberMapper.memberList(vo);
        return member;
    }


}


