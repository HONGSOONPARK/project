package hs.intro.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;


@Component("authProvider")
public class AuthProvider implements AuthenticationProvider  {

	@Autowired
	MemberDetailService memberDetailService;

//	@Autowired
//	BCryptPasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		 	String id = authentication.getName();
	        String password = authentication.getCredentials().toString();

	        MemberDetailVO member = null;

	        member = memberDetailService.loadUserByUsername(id);


//	        if(member.equals(null) || member == null){
	        if(member == null){
	        	throw new UsernameNotFoundException("[ "+id+" ] 사용자를 찾을 수 없습니다.");
	        }

	        if(!passwordEncoder().matches(password, member.getPassword())){
	            throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
	        }

	        List<GrantedAuthority> grantedAuthorityList = new ArrayList<>();

	        // 로그인한 계정에게 권한 부여
	        grantedAuthorityList.add(new SimpleGrantedAuthority(member.getMember_role()));

	        // 로그인 성공시 로그인 사용자 정보 반환
	        UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(id, password, grantedAuthorityList);
	        return result;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}


}

