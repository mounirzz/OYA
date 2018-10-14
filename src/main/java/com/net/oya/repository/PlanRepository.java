package com.net.oya.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Plan;
@Repository
public interface PlanRepository extends JpaRepository<Plan, Long> {

	
	@Query("FROM Plan p")
	List<Plan> findPopPlan();


}