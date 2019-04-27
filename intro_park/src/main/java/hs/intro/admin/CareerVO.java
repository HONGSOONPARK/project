
package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class CareerVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<CareerVO> careervo;
	private Integer no;
	private String name;
	private String type;
	private String detail;
	private String use_yn;

	private String start_date;
	private String end_date;

	private String del_yn;
	private String status;

	private String attach_file;

	private Integer list_order;
	private String reg_date;

}