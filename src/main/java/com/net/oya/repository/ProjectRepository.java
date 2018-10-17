package com.net.oya.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Project;
@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer> {

	//List<Project> findByDateCreateTimeDesc();
	
	//List<Project> findByDateCreateTimeAsc();
	
	@Query("FROM Project p")
	List<Project> findPopProject();


}
