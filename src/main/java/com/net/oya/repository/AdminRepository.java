package com.vito16.shop.repository;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vito16.shop.model.Admin;


@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {
	public Admin findByUsernameAndPassword(String username, String password);
}
