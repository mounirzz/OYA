package com.vito16.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vito16.shop.model.Collaborateur;
@Repository
public interface CollaborRepository extends JpaRepository<Collaborateur, Integer>{
	public Collaborateur findByUsername(String username);
	public Collaborateur findByUsernameAndPassword(String username, String password);

}