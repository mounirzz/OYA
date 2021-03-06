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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.net.oya.common.AppConfig;
import com.net.oya.common.Page;
import com.net.oya.model.Plan;
import com.net.oya.service.PlanService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.UserUtil;

@Controller
@RequestMapping("/Plan")
public class PlanController {
	
	private static final Logger Logger = LoggerFactory.getLogger(PlanController.class);
	
	@Autowired
	AppConfig appConfig ;
	@Autowired
	PlanService PlanService;
	@Autowired
	UserService userService ;
	
	  @RequestMapping(method = RequestMethod.GET)
	    public ModelAndView index(ModelAndView model , HttpServletRequest request) {
	    	Page<Plan> page = new Page<Plan>(request);
	    	PlanService.findPlan(page);
	    	model.addObject("page", page);
	    	model.setViewName("Plan");
	    	return model;
	    }
	    @RequestMapping(value = "/{id}", method=RequestMethod.GET)
	    public ModelAndView viewPlan(@PathVariable Long id, ModelAndView model, HttpServletRequest request) {
	    	Plan plan = PlanService.findById(id);
	    	model.addObject("plan", plan);
	    	model.setViewName("Project/plan/PlanDetail");
	    	return model;
	    }
	    @RequestMapping(value="/plan" , method = RequestMethod.GET)
	    public String Plan(Model model, HttpServletRequest request) {
	    	Page<Plan> page = new Page<Plan>(request);
	    	PlanService.findPlan(page);
	    	model.addAttribute("page", page);
	    	return "Project/addProject";
	    }
	    @RequestMapping(value="/plan/{id}")
	    public ModelAndView PlanView(@PathVariable("id") Long id , HttpSession session,ModelAndView model) {
	    	Plan plan=PlanService.findById(id);
	    	model.addObject("plan", plan);
	    	model.setViewName("redirect:/Project/plan/planDetail");
	    	return model ;
	    }
	    
	    @RequestMapping(value = "/plan/delete/{id}")
	    @ResponseBody
	    public String PlanDelete(@PathVariable("id") Long idPlan) {
	    	PlanService.deletePlan(idPlan);
	    	return "success";
	    }
	    @RequestMapping(value="/plan/edit" , method = RequestMethod.POST)
	    public ModelAndView doEdit(ModelAndView model, Plan plan,HttpSession session) {
	    	plan.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	PlanService.addPlan(plan);
	    	model.setViewName("redirect:/Project/plan");
	    	return model ;
	    }
	    @RequestMapping(value="/plan/edit/{id}", method = RequestMethod.GET)
	    public ModelAndView editplan(ModelAndView model , @PathVariable Long idPlan , HttpSession session) {
	    	Plan plan = PlanService.findById(idPlan);
	    	model.addObject("plan", plan);
	    	model.setViewName("Project/plan/planEdit");
	    	return model ;
	    }
	    @RequestMapping(value="/plan/add" , method = RequestMethod.GET)
	    public String planadd(HttpSession session) {
	    	if (UserUtil.getUserFromSession(session)==null) {
				return "redirect:/user/login?error=true";
			}
	    	return "user/Project/plan/NewPlan";
	    }
	    @RequestMapping(value= "/plan/add", method = RequestMethod.POST)
	    public String planadd(@Valid @ModelAttribute Plan plan, BindingResult result, HttpSession session) throws Exception {
	    	plan.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	PlanService.addPlan(plan);
	    	return "redirect:/Planning/planning#step-4";
	    }
	    
}
