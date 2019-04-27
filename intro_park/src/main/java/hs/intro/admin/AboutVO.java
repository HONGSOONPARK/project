package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class AboutVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<AboutVO> aboutvo;
	private Integer no;
	private String category;
	private String introduce;
	private String title;
	private String sub_title;
	private String reg_date;

}