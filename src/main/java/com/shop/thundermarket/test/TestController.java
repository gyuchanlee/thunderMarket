package com.shop.thundermarket.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
    
    @Autowired
    TestMapper mapper;

    @ResponseBody
    @RequestMapping("/memberInfo")
    public List<Map<?, ?>> memberInfo() {
        return mapper.memberInfo();
    }

}
