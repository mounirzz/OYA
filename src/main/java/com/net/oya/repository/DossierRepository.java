package com.net.oya.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.net.oya.model.DossierAdmin;
@Repository
public interface DossierRepository extends JpaRepository<DossierAdmin, Long> {
	
}
