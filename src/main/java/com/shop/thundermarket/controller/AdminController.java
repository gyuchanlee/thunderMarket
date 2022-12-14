package com.shop.thundermarket.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class AdminController {

    @GetMapping("/admin")
    public String adminPage() {
        log.info("admin page controller");
        return "admin/admin";
    }
}
