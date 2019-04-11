package hs.intro.mapper;

import hs.intro.security.MemberDetailVO;

public interface MemberMapper {

	public MemberDetailVO memberList(String memberId) throws Exception;


}
