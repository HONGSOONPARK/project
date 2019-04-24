package hs.intro.admin;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class AboutVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private Integer no;
	private String category;
	private String introduce;
	private String reg_date;

}