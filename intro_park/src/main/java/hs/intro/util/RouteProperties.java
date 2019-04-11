package hs.intro.util;

import org.springframework.boot.context.properties.ConfigurationProperties;


@ConfigurationProperties(prefix="spring.file")
public class RouteProperties {
    private String uploadDir;

    public String getUploadDir() {
        return uploadDir;
    }

    public void setUploadDir(String uploadDir) {
        this.uploadDir = uploadDir;
    }
}







