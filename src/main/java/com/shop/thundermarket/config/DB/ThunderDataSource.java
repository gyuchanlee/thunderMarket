package com.shop.thundermarket.config.DB;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

import lombok.Data;

@Data
@Configuration
@PropertySources({ 
    @PropertySource(value = "file:c:/thunderdb.properties", ignoreResourceNotFound = true), // 윈도우용(개발 시)
    @PropertySource(value = "file:${user.home}/thunder/config/thunderdb.properties", ignoreResourceNotFound = true) // 리눅스용(배포 시)
})
public class ThunderDataSource {
    @Value("${spring.datasource.driver-class-name}")
    private String driverClassName;

    @Value("${spring.datasource.url}")
    private String url;

    @Value("${spring.datasource.username}")
    private String username;

    @Value("${spring.datasource.password}")
    private String password;
}
