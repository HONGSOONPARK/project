package hs.intro.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import hs.intro.mapper.MemberMapper;

@Service("memberDetailService")
public class MemberDetailService implements UserDetailsService {

	@Autowired
	MemberMapper memberMapper;

	@Override
	public MemberDetailVO loadUserByUsername(String memberId) throws UsernameNotFoundException {
		MemberDetailVO userDetail = null;
		try {
			userDetail = memberMapper.memberList(memberId);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return userDetail;
	}


}
