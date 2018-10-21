package com.net.oya.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.net.oya.common.Page;

import com.net.oya.model.Phase;

import com.net.oya.repository.PhaseRepository;

@Service
@Transactional
public class PhaseService {


	@Autowired
	PhaseRepository phaseRepository;

	public void addPhase(Phase phase) {
		phaseRepository.save(phase);
	}

	public void deletePhase(Integer id) {
		phaseRepository.delete(id);
	}

	public List<Phase> findPhase(Page<Phase> page) {
		page.setResult(phaseRepository.findAll(page.getPageable()).getContent());
		page.setTotalCount(phaseRepository.count());
		return page.getResult();
	}

	public Phase findById(Integer id) {
		return phaseRepository.findOne(id);
	}

}