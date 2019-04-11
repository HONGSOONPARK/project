package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import hs.intro.common.FileVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
@EqualsAndHashCode(callSuper=true)
public class PortfolioVO extends FileVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<PortfolioVO> portfoliovo;
    private Integer no;
    private String category;
    private String corp;
    private String project_title;
    private String project_intro;
    private String start_date;
    private String end_date;
    private String contents;
    private String result;
    private String status;
    private String use_yn;
    private String del_yn;
    private String etc1;
    private String etc2;
    private Integer list_order;
    private String reg_date;







}