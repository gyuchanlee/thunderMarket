package com.shop.thundermarket.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        log.info("home controller");
        return "home";
    }

    @GetMapping("/test/test1")
    public String test() {
        log.info("test controller");
        return "test/test";
    }

}
