package com.vito16.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.common.Page;
import com.vito16.shop.model.DossierAdmin;
import com.vito16.shop.repository.DossierRepository;

@Service
@Transactional
public class DossierService extends BaseService {

	@Autowired
	DossierRepository dossierRepository;

	public void addDossier(DossierAdmin dossierAdmin) {
		dossierRepository.save(dossierAdmin);
	}

	public void deleteDossier(Integer idDossier) {
		dossierRepository.delete(idDossier);
	}

	public List<DossierAdmin> findDossier(Page<DossierAdmin> page) {
		page.setResult(dossierRepository.findAll(page.getPageable()).getContent());
		page.setTotalCount(dossierRepository.count());
		return page.getResult();
	}

	public DossierAdmin findById(Integer id) {
		return dossierRepository.findOne(id);
	}

}
