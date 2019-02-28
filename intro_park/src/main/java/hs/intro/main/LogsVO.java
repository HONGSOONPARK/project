package hs.intro.main;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data @Getter @Setter
public class LogsVO {


    private int idx;

    private String ip;

    private String page;

    private String contents;

    private String etc;

    private String date;
}