package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class IntroduceVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<IntroduceVO> introducevo;
	private Integer no;
	private String title;
	private String sub_title;
	private String introduce;
	private String use_yn;
	private String del_yn;
	private Integer list_order;
	private String reg_date;

}