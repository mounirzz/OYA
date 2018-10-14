package com.net.oya.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.net.oya.common.Page;
import com.net.oya.model.Project;
import com.net.oya.repository.ProjectRepository;

@Service
@Transactional
public class ProjectService {

	@Autowired
	ProjectRepository projectDao ;
	
	public void save(Project project) {
		projectDao.save(project);
	}
	public Project findById(long id) {
		return projectDao.findOne(id);
	}
	/*public List<Project> findnew(){
		return projectDao.findByDateCreateTimeDesc();
	}*/
	/*public List<Project> findOld(){
		return projectDao.findByDateCreateTimeAsc();
	}*/
	public List<Project> findPop(){
		return projectDao.findPopProject();
	}
	public List<Project> findProjects(Page<Project> page){
		page.setResult(projectDao.findAll(page.getPageable()).getContent());
		page.setTotalCount(projectDao.count());
		return page.getResult();
	}
	public List<Project> finAll(){
		return projectDao.findAll();
	}
	public Project finOne(long id) {
		return projectDao.findOne(id);
	}
}
