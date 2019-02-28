package hs.intro.common;

import java.util.List;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import hs.intro.main.LogsVO;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data @Setter @Getter
public class AbstractDAO {
    protected Log log = LogFactory.getLog(AbstractDAO.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }

    public List<LogsVO> listForBeanPropertyRowMapper(String queryId){

        queryId = "SELECT * FROM LOGS";

        return jdbcTemplate.query(queryId, new BeanPropertyRowMapper<LogsVO>(LogsVO.class));
    }

    public int insert(String queryId, LogsVO logs){

        queryId = "INSERT INTO LOGS(IDX, IP, PAGE, CONTENTS, DATE) VALUE(?,?,?,?,?)";

        return jdbcTemplate.update(queryId, logs.getIdx(), logs.getIp() ,logs.getPage(), logs.getContents(), "NOW()" );
    }








}