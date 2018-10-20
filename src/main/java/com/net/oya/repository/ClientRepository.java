package com.net.oya.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer>{
	
	public Client findByUsernameAndPassword(String username, String password);

    public Client  findByUsername(String username);

}
