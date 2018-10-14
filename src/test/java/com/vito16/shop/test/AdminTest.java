package com.vito16.shop.test;

import com.net.oya.model.Admin;
import com.net.oya.service.AdminService;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminTest extends BaseTest{

    @Autowired
    AdminService adminService;

    @Test
    public void testAddAdmin() {
        Admin admin = new Admin();
        admin.setUsername("vito");
        admin.setPassword("123456");
        adminService.save(admin);
    }

}
