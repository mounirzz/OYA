package com.vito16.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.model.Chantier;
import com.vito16.shop.repository.ChantierRepository;
import com.vito16.shop.repository.ProjectRepository;

@Service
@Transactional
public class ChantierService {

	/*@Autowired
	ProjectRepository projectRepository ;
	@Autowired 
	ChantierRepository chantierRepository ;
	
	public void save(Chantier chantier) {
		chantierRepository.save(chantier);
	}
	public Chantier findById(Long id) {
		return chantierRepository.findOne(id);
	}
	public List<Chantier> findChantier(){
		return chantierRepository.findAll();
	}
	/*public List<Chantier> findChantierByProject(){
		return chantierRepository.findByProejct();
	}*/
}
