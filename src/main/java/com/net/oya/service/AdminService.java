/**
 *
 */
package com.vito16.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.repository.AdminRepository;
import com.vito16.shop.model.Admin;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
@Transactional
public class AdminService {
    @Autowired
    private AdminRepository adminDao;

    public boolean checkLogin(Admin admin) {
        return findByUsernameAndPassword(admin.getUsername(), admin.getPassword()) == null ? false : true;
    }

    public Admin findByUsernameAndPassword(String username, String password) {
        return adminDao.findByUsernameAndPassword(username, password);
    }

    public void save(Admin admin) {
        adminDao.save(admin);
    }

    public Admin findOne(Integer id) {
        return adminDao.findOne(id);
    }

}
