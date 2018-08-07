package com.vito16.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vito16.shop.model.DossierAdmin;
@Repository
public interface DossierRepository extends JpaRepository<DossierAdmin, Integer> {
	
}
