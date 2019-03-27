package hs.intro.main;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data @Getter @Setter
//@AllArgsConstructor
@NoArgsConstructor
//@JsonIgnoreProperties(ignoreUnknown = true)
public class ContactVO implements Serializable {

    /**
	 *
	 */
	private static final long serialVersionUID = 5931152279161665150L;
	private Integer no;
    private String subject = "";
    private String message = "";
    private String name = "";
    private String email = "";
    private String submit;
    private String date;



//    public ContactVO(Integer no, String subject, String message, String name, String email, String submit, String date){
//    	this.no = no;
//    	this.subject = subject;
//    	this.message = message;
//    	this.name = name;
//    	this.email = email;
//    	this.submit = submit;
//    	this.date = date;
//    }







}