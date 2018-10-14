/**
 *
 */
package com.vito16.shop.test;

import com.net.oya.model.User;
import com.net.oya.repository.UserRepository;
import com.net.oya.service.UserService;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author 
 * @version 2016/03/14
 */
public class UserTest extends BaseTest {

    private static final Logger logger = LoggerFactory.getLogger(UserTest.class);


    @Autowired
    UserRepository userDao;

    @Autowired
    UserService userService;

    @Test
    public void testSave() {
        User user = new User();
        user.setUsername("测试用户");
        user.setPassword("123456");
        userService.save(user);
    }


    @Test
    public void testGetLoginRole(){
        User user = new User();
        user.setUsername("测试用户");
        user.setPassword("123456");
        boolean loginCheck =         userService.checkLogin(user);
        
    }
}
