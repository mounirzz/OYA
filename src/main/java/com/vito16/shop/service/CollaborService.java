package com.vito16.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.model.Collaborateur;
import com.vito16.shop.repository.CollaborRepository;
@Service
@Transactional
public class CollaborService {

	@Autowired
	private CollaborRepository collaborRepository ;
	
	public boolean checkLogin(Collaborateur collaborateur) {
		collaborateur = collaborRepository.findByUsernameAndPassword(collaborateur.getUsername(),collaborateur.getPassword());
		return collaborateur != null ;
	}
	public Collaborateur findByCollaAndPassword(String username , String password) {
		Collaborateur collaborateur = collaborRepository.findByUsernameAndPassword(username, password);
		return collaborateur ;
	}
	public Collaborateur findByUsername(String username) {
		return collaborRepository.findByUsername(username);
	}
	public void save(Collaborateur collaborateur) {
		collaborRepository.save(collaborateur);
	}
	public Collaborateur findOne(Integer id) {
		return collaborRepository.findOne(id);
	}
	public void updateCollaborateur(Collaborateur collaborateur) {
		collaborRepository.save(collaborateur);
	}
	public Collaborateur findById(Integer id) {
		return collaborRepository.findOne(id);
	}
}
