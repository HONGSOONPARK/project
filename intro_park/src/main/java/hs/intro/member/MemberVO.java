package hs.intro.member;

import lombok.Data;

@Data
public class MemberVO {
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
}
