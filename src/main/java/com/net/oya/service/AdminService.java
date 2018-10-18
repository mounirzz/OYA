/**
 *
 */
package com.net.oya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.common.Page;
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
    public List<Admin> findAdmin(Page<Admin> page){
    	page.setResult(adminDao.findAll(page.getPageable()).getContent());
    	page.setTotalCount(adminDao.count());
    	return page.getResult();
    }

    public void save(Admin admin) {
        adminDao.save(admin);
    }

    public Admin findOne(Integer id) {
        return adminDao.findOne(id);
    }
    public void admindelete(Integer id) {
    	adminDao.delete(id);
    }

}
