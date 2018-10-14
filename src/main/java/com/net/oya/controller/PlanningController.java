package com.net.oya.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.net.oya.common.AppConfig;
import com.net.oya.common.Page;
import com.net.oya.model.Planning;
import com.net.oya.service.PlanningService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.UserUtil;

@Controller
@RequestMapping("/Planning")
public class PlanningController {
	
	private static final Logger Logger = LoggerFactory.getLogger(PlanningController.class);
	
	@Autowired
	AppConfig appConfig ;
	@Autowired
	PlanningService PlanningService;
	@Autowired
	UserService userService ;
	
	  @RequestMapping(method = RequestMethod.GET)
	    public ModelAndView index(ModelAndView model , HttpServletRequest request) {
	    	Page<Planning> page = new Page<Planning>(request);
	    	PlanningService.findPlanning(page);
	    	model.addObject("page", page);
	    	model.setViewName("Planning");
	    	return model;
	    }
	    @RequestMapping(value = "/{id}", method=RequestMethod.GET)
	    public ModelAndView viewPlanning(@PathVariable Integer id, ModelAndView model, HttpServletRequest request) {
	    	Planning planning = PlanningService.findById(id);
	    	model.addObject("planning", planning);
	    	model.setViewName("Project/planning/planningDetail");
	    	return model;
	    }
	    @RequestMapping(value="/planning" , method = RequestMethod.GET)
	    public String Planning(Model model, HttpServletRequest request) {
	    	Page<Planning> page = new Page<Planning>(request);
	    	PlanningService.findPlanning(page);
	    	model.addAttribute("page", page);
	    	return "Project/addProject";
	    }
	    @RequestMapping(value="/planning/{id}")
	    public ModelAndView PlanningView(@PathVariable("id") Integer id , HttpSession session,ModelAndView model) {
	    	Planning planning=PlanningService.findById(id);
	    	model.addObject("planning", planning);
	    	model.setViewName("redirect:/Project/planning/planningDetail");
	    	return model ;
	    }
	    @RequestMapping(value = "/planning/delete/{id}")
	    @ResponseBody
	    public String PlanningDelete(@PathVariable("id") Integer id_planning) {
	    	PlanningService.deletePlanning(id_planning);
	    	return "success";
	    }
	    @RequestMapping(value="/planning/edit" , method = RequestMethod.POST)
	    public ModelAndView doEdit(ModelAndView model, Planning planning,HttpSession session) {
	    	planning.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	PlanningService.addPlanning(planning);
	    	model.setViewName("redirect:/Project/planning");
	    	return model ;
	    }
	    @RequestMapping(value="/planning/edit/{id}", method = RequestMethod.GET)
	    public ModelAndView editplanning(ModelAndView model , @PathVariable Integer id_planning , HttpSession session) {
	    	Planning planning = PlanningService.findById(id_planning);
	    	model.addObject("planning", planning);
	    	model.setViewName("Project/planning/planningEdit");
	    	return model ;
	    }
	    @RequestMapping(value="/planning/add" , method = RequestMethod.GET)
	    public String planningadd(HttpSession session) {
	    	if (UserUtil.getUserFromSession(session)==null) {
				return "redirect:/user/login?error=true";
			}
	    	return "user/Project/planning/NewPlanning";
	    }
	    @RequestMapping(value= "/planning/add", method = RequestMethod.POST)
	    public String planningadd(@Valid Planning planning,BindingResult result, HttpSession session) throws Exception {
	    	planning.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	PlanningService.addPlanning(planning);
	    	return "redirect:/Projects/add#step-1";
	    }
	    
}
