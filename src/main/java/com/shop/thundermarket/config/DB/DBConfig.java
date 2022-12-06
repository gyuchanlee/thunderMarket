package com.shop.thundermarket.config.DB;

import javax.sql.DataSource;

import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
@RequiredArgsConstructor
public class DBConfig {

    private final ThunderDataSource globalPropertySource;

    @Bean
    @Primary
    public DataSource customDataSource() {
        return DataSourceBuilder
                .create()
                .url(globalPropertySource.getUrl())
                .driverClassName(globalPropertySource.getDriverClassName())
                .username(globalPropertySource.getUsername())
                .password(globalPropertySource.getPassword())
                .build();
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource customDataSource) throws Exception {
        final SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(customDataSource);
        return sessionFactory.getObject();
    }
}
