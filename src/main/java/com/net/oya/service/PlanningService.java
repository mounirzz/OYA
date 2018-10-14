package com.net.oya.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.net.oya.common.Page;
import com.net.oya.model.Planning;
import com.net.oya.repository.PlanningRepository;

@Service
@Transactional
public class PlanningService {


	@Autowired
	PlanningRepository planningRepository;

	public void addPlanning(Planning Planning) {
		planningRepository.save(Planning);
	}

	public void deletePlanning(Integer id_planning) {
		planningRepository.delete(id_planning);
	}

	public List<Planning> findPlanning(Page<Planning> page) {
		page.setResult(planningRepository.findAll(page.getPageable()).getContent());
		page.setTotalCount(planningRepository.count());
		return page.getResult();
	}

	public Planning findById(Integer id) {
		return planningRepository.findOne(id);
	}

}