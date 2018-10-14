package com.net.oya.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Planning;

@Repository
public interface PlanningRepository extends JpaRepository<Planning, Integer> {

	
	@Query("FROM Planning p")
	List<Planning> findPopPlanning();


}