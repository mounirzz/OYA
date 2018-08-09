package com.vito16.shop.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vito16.shop.common.Page;
import com.vito16.shop.model.DossierAdmin;
import com.vito16.shop.model.Plan;
import com.vito16.shop.repository.DossierRepository;
import com.vito16.shop.repository.PlanRepository;

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