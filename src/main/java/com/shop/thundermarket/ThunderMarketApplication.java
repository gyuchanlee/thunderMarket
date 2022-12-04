package com.shop.thundermarket;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.shop.thundermarket")
public class ThunderMarketApplication {

    public static void main(String[] args) {
        SpringApplication.run(ThunderMarketApplication.class, args);
    }

}
