package com.net.oya.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.net.oya.common.AppConfig;
import com.net.oya.common.Page;
import com.net.oya.model.Admin;
import com.net.oya.model.Client;
import com.net.oya.model.Project;
import com.net.oya.model.User;
import com.net.oya.service.ClientService;
import com.net.oya.service.ProjectService;
import com.net.oya.service.RememberService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.ClientUtil;
import com.net.oya.util.CookieUtil;

@Controller
@RequestMapping(value="/client")
public class ClientController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	AppConfig appconfig ;
	
	@Autowired
	ProjectService projectService ;
	
	@Autowired
	UserService userService ;
	
	@Autowired
	ClientService clientService ;
	
	@Autowired
	RememberService rememberService ;
	
	 @RequestMapping(method = RequestMethod.GET)
	    public String index() {
	        return "client/userLogin2";
	    }

	    @RequestMapping(value = "/reg", method = RequestMethod.POST)
	    public String doReg(Client client, HttpSession session) {
	        clientService.save(client);
	        return "admin/client";
	    }

	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String login() {
	        return "client/adminLogin";
	    }

	    @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public String doLogin(Client client, HttpSession session) {
	        if (clientService.checkLogin(client)) {
	            ClientUtil.saveCLientToSession(session, clientService.findByUsernameAndPassword(client.getUsername(), client.getPassword())); 
	            logger.debug("L'administrateur[{}]Atterrissage réussi",client.getUsername());
	            return "redirect:/client/home";
	        }
	        return "redirect:/client/login?errorPwd=true";
	    }
	    @RequestMapping(value="/home", method = RequestMethod.GET)
	    public String MyHome(HttpSession session,HttpServletResponse response, HttpServletRequest request, Model model,Project project,User user) {
	    	Admin admin = AdminUtil.getAdminFromSession(session);
	    	model.addAttribute("admin" ,admin);
	    	Page<Project> page = new Page<Project>(request);
	    	projectService.findProjects(page);
	    	model.addAttribute("page" ,page);
	    	return "client/index" ;
	    }
	    @RequestMapping(value="/reg", method = RequestMethod.GET)
	    public String Mytable(HttpSession session, HttpServletResponse response , HttpServletRequest request, Model model, User user) {
	    	Admin admin = AdminUtil.getAdminFromSession(session);
	    	model.addAttribute("admin2" ,admin);
	    	Page<Client> page2= new Page<Client>(request);
	    	clientService.findClient(page2);
	    	model.addAttribute("page2" ,page2);
	    	return "admin/client";
	    }
	    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
	    public String admindelete(@PathVariable("id") Integer id) {
	    	clientService.clientdelete(id);
	    	return "redirect:/admin/home";
	    }

	    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(HttpSession session,HttpServletResponse response) {
	        ClientUtil.deleteClientFromSession(session);
	        CookieUtil.removeCookie(response, appconfig.USER_COOKIE_NAME);
//	        rememberService.delete();
	        return "redirect:/";
	    }
	

}
