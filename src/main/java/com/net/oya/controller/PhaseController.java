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
import com.net.oya.model.Phase;
import com.net.oya.service.PhaseService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.UserUtil;

@Controller
@RequestMapping("/Phase")
public class PhaseController {
	
	private static final Logger Logger = LoggerFactory.getLogger(PhaseController.class);
	
	@Autowired
	AppConfig appConfig ;
	@Autowired
	PhaseService phaseService;
	@Autowired
	UserService userService ;
	
	  @RequestMapping(method = RequestMethod.GET)
	    public ModelAndView index(ModelAndView model , HttpServletRequest request) {
	    	Page<Phase> page = new Page<Phase>(request);
	    	phaseService.findPhase(page);
	    	model.addObject("page", page);
	    	model.setViewName("Phase");
	    	return model;
	    }
	    @RequestMapping(value = "/{id}", method=RequestMethod.GET)
	    public ModelAndView viewPhase(@PathVariable Integer id, ModelAndView model, HttpServletRequest request) {
	    	Phase phase = phaseService.findById(id);
	    	model.addObject("phase", phase);
	    	model.setViewName("Project/phase/PhaseDetail");
	    	return model;
	    }
	    @RequestMapping(value="/phase" , method = RequestMethod.GET)
	    public String Phase(Model model, HttpServletRequest request) {
	    	Page<Phase> page = new Page<Phase>(request);
	    	phaseService.findPhase(page);
	    	model.addAttribute("page", page);
	    	return "Project/addProject";
	    }
	    @RequestMapping(value="/phase/{id}")
	    public ModelAndView PhaseView(@PathVariable("id") Integer id , HttpSession session,ModelAndView model) {
	    	Phase phase=phaseService.findById(id);
	    	model.addObject("phase", phase);
	    	model.setViewName("redirect:/Project/phase/phaseDetail");
	    	return model ;
	    }
	    @RequestMapping(value = "/phase/delete/{id}")
	    @ResponseBody
	    public String PhaseDelete(@PathVariable("id") Integer idPhase) {
	    	phaseService.deletePhase(idPhase);
	    	return "success";
	    }
	/*    @RequestMapping(value="/phase/edit" , method = RequestMethod.POST)
	    public ModelAndView doEdit(ModelAndView model, Phase phase,HttpSession session) {
	    	phase.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	PhaseService.addPhase(phase);
	    	model.setViewName("redirect:/Project/phase");
	    	return model ;
	    }*/
	    @RequestMapping(value="/phase/edit/{id}", method = RequestMethod.GET)
	    public ModelAndView editphase(ModelAndView model , @PathVariable Integer id , HttpSession session) {
	    	Phase phase = phaseService.findById(id);
	    	model.addObject("phase", phase);
	    	model.setViewName("Project/phase/phaseEdit");
	    	return model ;
	    }
	    @RequestMapping(value="/phase/add" , method = RequestMethod.GET)
	    public String phaseadd(HttpSession session) {
	    	if (UserUtil.getUserFromSession(session)==null) {
				return "redirect:/user/login?error=true";
			}
	    	return "user/Project/phase/NewPhase";
	    }
	    @RequestMapping(value= "/phase/add", method = RequestMethod.POST)
	    public String phaseadd(@Valid @ModelAttribute Phase phase, BindingResult result, HttpSession session) throws Exception {
	    	phase.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	phaseService.addPhase(phase);
	    	return "redirect:/Planning/planning#step-4";
	    }
	   
	    
}
