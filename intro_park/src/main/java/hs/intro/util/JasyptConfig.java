package hs.intro.util;

import org.jasypt.encryption.StringEncryptor;
import org.jasypt.encryption.pbe.PooledPBEStringEncryptor;
import org.jasypt.encryption.pbe.config.SimpleStringPBEConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;


 @Configuration
 @EnableEncryptableProperties
 public class JasyptConfig  {


	 // Run Configurations 에서 환경변수 설정
	 @Value("${PASS_ENV_KEY}")
     private String ENCRYPT_KEY;

     @Bean("jasyptStringEncrptor")
     public StringEncryptor stringEncryptor() {
         PooledPBEStringEncryptor encryptor = new PooledPBEStringEncryptor();
         SimpleStringPBEConfig config = new SimpleStringPBEConfig();
         config.setPassword(ENCRYPT_KEY);
         config.setAlgorithm("PBEWithMD5AndDES");
         config.setKeyObtentionIterations("1000");
         config.setPoolSize("1");
//         config.setProviderName("intro_park");
         config.setSaltGeneratorClassName("org.jasypt.salt.RandomSaltGenerator");
         config.setStringOutputType("base64");
         encryptor.setConfig(config);
         return encryptor;
     }
 }






