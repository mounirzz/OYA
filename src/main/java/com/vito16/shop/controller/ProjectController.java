package com.vito16.shop.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vito16.shop.common.Page;
import com.vito16.shop.model.Project;
import com.vito16.shop.service.ChantierService;
import com.vito16.shop.service.ProjectService;
import com.vito16.shop.util.CollaUtil;

@Controller
@RequestMapping(value="/Projects")
public class ProjectController {

	private static org.slf4j.Logger Logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
	ProjectService projectService ;
	@Autowired
	ChantierService chantierService ;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView admin(ModelAndView model,HttpSession session, HttpServletRequest request) {
		Page<Project> page = new Page<Project>(request);
		projectService.findProjects(page);
		model.addObject("page", page);
		model.setViewName("Project/ListProject");
		return model ;
	}
	@RequestMapping(value="/add" ,method = RequestMethod.POST)
	public ModelAndView newForm(ModelAndView model,HttpSession sessino) {
		model.setViewName("Project/addProject");
		return model ;
		
	}
	@RequestMapping(value="/add",method =RequestMethod.POST)
	public String doNew(@Valid @ModelAttribute Project project,BindingResult result , HttpSession session, Integer id) throws Exception{
		project.setInputColl(CollaUtil.getCollFromSession(session));
		project.setDate_debut(new Date());
		projectService.save(project);
		return "redirect:/Project/ListProject";
	}
	
}
