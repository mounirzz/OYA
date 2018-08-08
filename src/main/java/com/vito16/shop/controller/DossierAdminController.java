package com.vito16.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vito16.shop.common.AppConfig;
import com.vito16.shop.common.Page;
import com.vito16.shop.model.DossierAdmin;
import com.vito16.shop.service.DossierService;
import com.vito16.shop.service.UserService;
import com.vito16.shop.util.AdminUtil;
import com.vito16.shop.util.UserUtil;

@Controller
@RequestMapping("/DossierAdministratif")
public class DossierAdminController {
	
	private static final Logger Logger = LoggerFactory.getLogger(DossierAdminController.class);
	
	@Autowired
	AppConfig appConfig ;
	@Autowired
	DossierService DossierService;
	@Autowired
	UserService userService ;
	
	  @RequestMapping(method = RequestMethod.GET)
	    public ModelAndView index(ModelAndView model , HttpServletRequest request) {
	    	Page<DossierAdmin> page = new Page<DossierAdmin>(request);
	    	DossierService.findDossier(page);
	    	model.addObject("page", page);
	    	model.setViewName("DossierAdministratif");
	    	return model;
	    }
	    @RequestMapping(value = "/{id}", method=RequestMethod.GET)
	    public ModelAndView viewDossierAdministratif(@PathVariable Integer id, ModelAndView model, HttpServletRequest request) {
	    	DossierAdmin dossierAdmin = DossierService.findById(id);
	    	model.addObject("dossierAdmin", dossierAdmin);
	    	model.setViewName("Project/dossier/DossierDetail");
	    	return model;
	    }
	    @RequestMapping(value="/dossier" , method = RequestMethod.GET)
	    public String Dossier(Model model, HttpServletRequest request) {
	    	Page<DossierAdmin> page = new Page<DossierAdmin>(request);
	    	DossierService.findDossier(page);
	    	model.addAttribute("page", page);
	    	return "Project/addProject";
	    }
	    @RequestMapping(value="/dossier/{id}")
	    public ModelAndView DossierView(@PathVariable("id") Integer id , HttpSession session,ModelAndView model) {
	    	DossierAdmin dossieradmin=DossierService.findById(id);
	    	model.addObject("dossieradmin", dossieradmin);
	    	model.setViewName("redirect:/Project/dossier/DossierDetail");
	    	return model ;
	    }
	    @RequestMapping(value = "/dossier/delete/{id}")
	    @ResponseBody
	    public String DossierDelete(@PathVariable("id") Integer idDossier) {
	    	DossierService.deleteDossier(idDossier);
	    	return "success";
	    }
	    @RequestMapping(value="/dossier/edit" , method = RequestMethod.POST)
	    public ModelAndView doEdit(ModelAndView model, DossierAdmin dossierAdmin,HttpSession session) {
	    	dossierAdmin.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	DossierService.addDossier(dossierAdmin);
	    	model.setViewName("redirect:/Project/dossier");
	    	return model ;
	    }
	    @RequestMapping(value="/dossier/edit/{id}", method = RequestMethod.GET)
	    public ModelAndView editdossier(ModelAndView model , @PathVariable Integer idDossier , HttpSession session) {
	    	DossierAdmin dossierAdmin = DossierService.findById(idDossier);
	    	model.addObject("dossierAdmin", dossierAdmin);
	    	model.setViewName("Project/dossier/dossierEdit");
	    	return model ;
	    }
	    @RequestMapping(value="/dossier/add" , method = RequestMethod.GET)
	    public String dossieradd(HttpSession session) {
	    	if (UserUtil.getUserFromSession(session)==null) {
				return "redirect:/user/login?error=true";
			}
	    	return "user/Project/dossier/NewDossier";
	    }
	    @RequestMapping(value= "/dossier/add", method = RequestMethod.POST)
	    public String dossieradd(DossierAdmin dossierAdmin, HttpSession session) {
	    	dossierAdmin.setInputAdmin(AdminUtil.getAdminFromSession(session));
	    	DossierService.addDossier(dossierAdmin);
	    	return "redirect:/user/Product/dossier";
	    }
	    
}



