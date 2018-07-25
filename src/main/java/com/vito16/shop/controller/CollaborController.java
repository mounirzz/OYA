/*package com.vito16.shop.controller;

import java.util.Date;

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

import com.vito16.shop.model.Collaborateur;
import com.vito16.shop.service.ChantierService;
import com.vito16.shop.service.CollaborService;
import com.vito16.shop.service.ProjectService;
import com.vito16.shop.service.UserService;
import com.vito16.shop.util.CollaUtil;
import com.vito16.shop.model.Project;

@Controller
@RequestMapping("/collabor")
public class CollaborController {
	private static final org.slf4j.Logger Logger = LoggerFactory.getLogger(CollaborController.class);

	@Autowired
	CollaborService collaborService ;
	
	@Autowired
	UserService userService ;
	
	@Autowired
	ProjectService projectService ;
	
	@Autowired
	ChantierService chantierService ;
	
	@RequestMapping(value ="/login" , method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public String doLogin(Collaborateur collaborateur , HttpSession session) {
		if (collaborService.checkLogin(collaborateur)) {
			CollaUtil.saveCollToSession(session, collaborService.findByCollaAndPassword(collaborateur.getUsername(), collaborateur.getPassword()));
			Logger.debug("Connexion reussi", collaborateur.getUsername());
			return "redirect:/";
		}
		return "redirect:/user/login?errorPWD=true";
	}
	TEST TEST TEST TEST
	@RequestMapping(value="/logout" ,method =RequestMethod.GET)
	public String doLogout(HttpSession session) {
		CollaUtil.getCollFromSession(session);
		return "redirect:/";
	}
	/*@RequestMapping(value ="/addProject", method=RequestMethod.POST)
	public String DoProject(@Valid @ModelAttribute Project project , BindingResult result , HttpSession session , Integer id) {
		project.setInputColl(CollaUtil.getCollFromSession(session));
		project.setDate_debut(new Date());
		projectService.save(project);
		return "redirect:/collabor/Projects/addProjects";
	}
	@RequestMapping(value="/addProject", method =RequestMethod.GET)
	public ModelAndView ProjectForm(ModelAndView model , HttpSession session) {
		model.setViewName("collabor/Project/addProject");
		if (CollaUtil.getCollFromSession(session)==null) {
			model.setViewName("redirect:/user/login?error=true");
			return model ;
		}
		model.setViewName("collabor/Projects/addProjects");
		return model ;
	}*//*
	@RequestMapping(value="/editProject/{id}" , method=RequestMethod.GET)
	public ModelAndView edit(ModelAndView model , @PathVariable Integer id) {
		Project project = projectService.findById(id);
		model.addObject("Project" , project);
		model.setViewName("Collor/Projects/editProjects");
		return model ;
	}
}*/