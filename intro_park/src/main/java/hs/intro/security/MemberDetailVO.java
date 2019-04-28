package hs.intro.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
public class MemberDetailVO implements UserDetails {

	private static final long serialVersionUID = -8723881098348330589L;


	private Integer member_no = 0;
	private String member_id="";
	private String member_pwd="";
	private String member_pwd_cur="";
	private String member_role="";
	private String member_role_name="";
	private String member_nick="";
	private String member_name="";
	private String member_tel="";
	private String member_phone="";
	private String member_email="";
	private String member_addr="";
	private String member_addr_2="";
	private String member_eng_name="";
	private String member_type="";
	private String cre_date;
	private String mod_date;
	private String use_yn = "";
	private String del_yn = "";
	private String status = "";

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("A"));
        return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return getMember_pwd();
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return getMember_id();
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
}
