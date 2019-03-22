package hs.intro.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import hs.intro.member.MemberVO;


@Component("authProvider")
public class AuthProvider implements AuthenticationProvider  {

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		 	String id = authentication.getName();
	        String password = authentication.getCredentials().toString();

//	        UserDto user = userService.selectUser(new UserDto(id));

	        MemberVO member = new MemberVO();
	        member.setMember_id(id);
	        member.setMember_pwd(password);

	        // email에 맞는 user가 없거나 비밀번호가 맞지 않는 경우.
//	        if (null == user || !user.getPassword().equals(password)) {
//	            return null;
//	        }

	        List<GrantedAuthority> grantedAuthorityList = new ArrayList<>();

	        // 로그인한 계정에게 권한 부여
	        grantedAuthorityList.add(new SimpleGrantedAuthority("A"));

	        // 로그인 성공시 로그인 사용자 정보 반환
	        UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(id, password, grantedAuthorityList);
	        return result;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}



}

