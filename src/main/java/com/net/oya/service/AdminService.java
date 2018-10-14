/**
 *
 */
package com.net.oya.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.model.Admin;
import com.net.oya.repository.AdminRepository;

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
