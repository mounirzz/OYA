package com.vito16.shop.test;

import com.vito16.shop.model.Admin;
import com.vito16.shop.model.Product;
import com.vito16.shop.model.User;
import com.vito16.shop.service.AdminService;
import com.vito16.shop.service.OrderService;
import com.vito16.shop.service.ProductService;
import com.vito16.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
  * Initialiser les cas de test
  * Insérer quelques données de test de base
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
public class InitiTest {

    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;
    @Autowired
    OrderService orderService;
    @Autowired
    AdminService adminService;

//    @Test
    public void testInit() {
        Admin admin = new Admin();
        admin.setUsername("Mounirzz");
        admin.setPassword("123456");
        adminService.save(admin);

        User user = new User();
        user.setUsername("zhouwentao");
        user.setPassword("123456");
        userService.save(user);

        Product team1 = new Product();
        team1.setTitle("3T Doric Team Carbon Assis");
        team1.setModel("3T-TEAM-DORIC-309");
        team1.setCreateTime(new Date());
        team1.setInputUser(admin);
        productService.save(team1);

        Product team2 = new Product();
        team2.setTitle("BMC SLR01 Version flotte de l'ensemble du cadre en carbone");
        team2.setModel("BMC-SLR01");
        team2.setCreateTime(new Date());
        team2.setInputUser(admin);
        productService.save(team1);

        Product team3 = new Product();
        team3.setTitle("FOX FLOAT 32 Fourchette de pression CTD");
        team3.setModel("FOX-32-100");
        team3.setCreateTime(new Date());
        team3.setInputUser(admin);
        productService.save(team1);
    }

}
