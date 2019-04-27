package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class SkillVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<SkillVO> skillvo;
	private Integer no;
	private String skill_name;
	private String skill_id;
	private Integer percentage;
	private String detail;
	private String etc;
	private String use_yn;
	private String del_yn;
	private Integer list_order;
	private String reg_date;

}