package com.net.oya.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.net.oya.common.Page;
import com.net.oya.model.DossierAdmin;
import com.net.oya.model.Plan;
import com.net.oya.repository.DossierRepository;
import com.net.oya.repository.PlanRepository;

@Service
@Transactional
public class PlanService {

	@Autowired
	PlanRepository planRepository;

	public void addPlan(Plan plan) {
		planRepository.save(plan);
	}

	public void deletePlan(Long idPlan) {
		planRepository.delete(idPlan);
	}

	public List<Plan> findPlan(Page<Plan> page) {
		page.setResult(planRepository.findAll(page.getPageable()).getContent());
		page.setTotalCount(planRepository.count());
		return page.getResult();
	}

	public Plan findById(Long id) {
		return planRepository.findOne(id);
	}

}