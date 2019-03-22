package hs.intro.mapper;

import java.util.List;

import hs.intro.member.MemberVO;

public interface MemberMapper {

	public List<MemberVO> memberList(MemberVO member)throws Exception;


}
