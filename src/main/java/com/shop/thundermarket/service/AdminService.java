package com.shop.thundermarket.service;

import org.springframework.stereotype.Service;

@Service
public interface AdminService {

    public void memberCreate();
    public void memberUpdate();
    public void memberDelete();

    public void itemCreate();
    public void itemUpdate();
    public void itemDelete();
}
