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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vito16.shop.common.Page;
import com.vito16.shop.model.DossierAdmin;
import com.vito16.shop.model.Project;
import com.vito16.shop.service.ChantierService;
import com.vito16.shop.service.ProjectService;
import com.vito16.shop.util.AdminUtil;
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
	
	@RequestMapping(value="/add" ,method = RequestMethod.GET)
	public ModelAndView newForm(ModelAndView model,HttpSession session) {
		model.setViewName("Project/addProject");
		if (AdminUtil.getAdminFromSession(session) != null) {
			model.setViewName("redirect:/");
		}
		return model ;
	}
	@RequestMapping(value="/add",method =RequestMethod.POST)
	public String doNew(@Valid @ModelAttribute Project project, BindingResult result , HttpSession session, Integer id) throws Exception{
		project.setInputColl(CollaUtil.getCollFromSession(session));
		project.setDate_debut(new Date());
		projectService.save(project);
		return "redirect:/DossierAdministratif/dossier#step-2";
	}
	@RequestMapping(value="/edit" , method = RequestMethod.POST)
	public ModelAndView doEdit(ModelAndView model , Project project , HttpSession session) {
		project.setInputColl(CollaUtil.getCollFromSession(session));
		projectService.save(project);
		model.setViewName("redirect:/Projects/ListProject");
		return model ;
	}
	@RequestMapping(value="/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editProject(ModelAndView model , @PathVariable Integer id, HttpSession session) {
		Project project = projectService.findById(id);
		model.addObject("projects", project);
		model.setViewName("Projects/ListProject");
		return model ;
	}
	@RequestMapping(value="/adds" ,method= RequestMethod.POST)
	public String doNew(HttpSession session) {
		if (CollaUtil.getCollFromSession(session)==null) {
			return "redirect:/user/login?error=true";
		}
		return "/Projects";
	}
}
