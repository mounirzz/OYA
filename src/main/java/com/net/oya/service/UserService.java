
package com.net.oya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.common.Page;
import com.net.oya.model.Project;
import com.net.oya.model.User;
import com.net.oya.repository.UserRepository;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userDao;

	public boolean checkLogin(User user) {
		user = userDao.findByUsernameAndPassword(user.getUsername(),
				user.getPassword());
		return user != null;
	}
	
	public User findByUsernameAndPassword(String username,String password){
		User user = userDao.findByUsernameAndPassword(username, password);
		return user;
	}

    public User findByUsername(String username){
        return userDao.findByUsername(username);
    }
    public List<User> findUsers(Page<User> page2){
		page2.setResult(userDao.findAll(page2.getPageable()).getContent());
		page2.setTotalCount(userDao.count());
		return page2.getResult();
	}
	public void save(User user) {
		userDao.save(user);
	}

	public User findOne(Integer id) {
		return userDao.findOne(id);
	}

	public  void updateUser(User user) {
		 userDao.save(user);
		
	}
	public void userdelete(Integer id) {
		userDao.delete(id);
	}
	public User findById(Integer id) {
		return userDao.findOne(id);
	}

}
