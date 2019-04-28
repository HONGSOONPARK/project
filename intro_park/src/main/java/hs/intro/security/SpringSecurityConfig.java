package hs.intro.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.header.writers.StaticHeadersWriter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
@EnableGlobalAuthentication
@ComponentScan(basePackages = {"hs.intro.*"})

public class SpringSecurityConfig extends WebSecurityConfigurerAdapter  {


	  	@Autowired
	    AuthProvider authProvider;

		@Autowired
		MemberDetailService memberDetailService;

	    @Override
	    public void configure(WebSecurity web) throws Exception {
	        // 허용되어야 할 경로들
	        web.ignoring().antMatchers("/resources/**","/uploads/**");
	    }

	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        // 로그인 설정
	        http.authorizeRequests()
	            // ROLE_USER, ROLE_ADMIN으로 권한 분리 유알엘 정의
	            .antMatchers("/*").permitAll()
	            .antMatchers("/mng/adminLogin").permitAll()
	            .antMatchers("/mng/*").access("A").antMatchers("/mng/*").access("G")
	            .antMatchers("/mng/*").authenticated()
	        .and()
	            // 로그인 페이지 및 성공 url, handler 그리고 로그인 시 사용되는 id, password 파라미터 정의
	            .formLogin()
	            .loginPage("/mng/adminLogin")
	            .defaultSuccessUrl("/mng/adminMain")
//	            .failureHandler(authFailureHandler)
//	            .successHandler(authSuccessHandler)
	            .usernameParameter("id")
	            .passwordParameter("password")
	        .and()
	            // 로그아웃 관련 설정
	            .logout().logoutRequestMatcher(new AntPathRequestMatcher("/user/logout"))
	            .logoutSuccessUrl("/mng/adminLogin")
	            .invalidateHttpSession(true)
	        .and()
	            // csrf 사용유무 설정
	            // csrf 설정을 사용하면 모든 request에 csrf 값을 함께 전달해야한다.
	            .csrf()
	        .and()
	            // 로그인 프로세스가 진행될 provider
	            .authenticationProvider(authProvider)
	            .userDetailsService(memberDetailService)
	            .headers()
                    .addHeaderWriter(new StaticHeadersWriter("X-Content-Security-Policy","script-src 'self'"))
                    .frameOptions().disable();



	    }



}

