package com.net.oya.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Phase;
@Repository
public interface PhaseRepository extends JpaRepository<Phase, Integer> {

	
	@Query("FROM Phase p")
	List<Phase> findPopPhase();


}