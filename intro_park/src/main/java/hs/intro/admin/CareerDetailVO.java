package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class CareerDetailVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<CareerDetailVO> careerdetailvo;

	private CareerDetailVO cdvo;

	private Integer no;
	private Integer ref_no;
	private String project_name;
	private String project_detail;
	private String del_yn;
	private Integer detail_order;
	private String reg_date;



}