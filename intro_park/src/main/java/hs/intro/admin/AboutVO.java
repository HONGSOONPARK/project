package hs.intro.admin;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import hs.intro.security.XssStringDeserializer;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Getter @Setter
//@EqualsAndHashCode(callSuper=true)
public class AboutVO implements Serializable {

	private static final long serialVersionUID = 5931152279161665150L;

	private List<AboutVO> aboutvo;
	private Integer no;


	@JsonDeserialize(using = XssStringDeserializer.class)
	private String category;

	@JsonDeserialize(using = XssStringDeserializer.class)
	private String introduce;

	@JsonDeserialize(using = XssStringDeserializer.class)
	private String title;

	@JsonDeserialize(using = XssStringDeserializer.class)
	private String sub_title;

	@JsonDeserialize(using = XssStringDeserializer.class)
	private String reg_date;

}