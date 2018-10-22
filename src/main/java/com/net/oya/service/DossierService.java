package com.net.oya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.common.Page;
import com.net.oya.model.DossierAdmin;
import com.net.oya.model.Project;
import com.net.oya.repository.DossierRepository;
import com.net.oya.repository.ProjectRepository;

@Service
@Transactional
public class DossierService {

	@Autowired
	DossierRepository dossierRepository;
	public void addDossier(DossierAdmin dossierAdmin) {
		dossierRepository.save(dossierAdmin);
	}
	public void deleteDossier(Long idDossier) {
		dossierRepository.delete(idDossier);
	}

	public List<DossierAdmin> findDossier(Page<DossierAdmin> page) {
		page.setResult(dossierRepository.findAll(page.getPageable()).getContent());
		page.setTotalCount(dossierRepository.count());
		return page.getResult();
	}

	public DossierAdmin findById(Long idDossier) {
		return dossierRepository.findOne(idDossier);
	}


}
