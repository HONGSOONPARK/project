package hs.intro;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@SpringBootApplication
@MapperScan(value = {"hs.intro.mapper"})
public class IntroParkApplication extends SpringBootServletInitializer {

	 @Override
	  protected SpringApplicationBuilder configure (SpringApplicationBuilder builder) {
	    return builder.sources(IntroParkApplication.class);
	  }



	public static void main(String[] args)  {
		SpringApplication.run(IntroParkApplication.class, args);
	}

	 /**
     * SqlSessionFactory 설정
     */
	   @Bean
	    public SqlSessionFactory sqlSessionFactory(DataSource dataSource)throws Exception{
	        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
	            sessionFactory.setDataSource(dataSource);
	            Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mappers/*_SQL.xml");
	            sessionFactory.setMapperLocations(res);
	            return sessionFactory.getObject();
	    }



}
