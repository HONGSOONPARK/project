package hs.intro.common;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
public class FileVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	// DB Colums
	private Integer file_no;
	private Integer ref_no;
	private String file_explain;
	private String file_original_name;
	private String file_stored_name;
	private String file_extension;
	private Long file_size;
	private String etc1;
	private String etc2;
	private String del_yn;
	private String reg_date;

	// Flag value
	private String file_status;



}