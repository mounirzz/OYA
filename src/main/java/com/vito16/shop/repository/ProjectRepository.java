package com.vito16.shop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.vito16.shop.model.Project;
@Repository
public interface ProjectRepository/* extends JpaRepository<Project, Long>*/ {

	//List<Project> findByDateCreateTimeDesc();
	
	//List<Project> findByDateCreateTimeAsc();
	
	//@Query("FROM Project p")
	//List<Project> findPopProject();


}
