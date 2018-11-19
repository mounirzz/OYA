package com.net.oya.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.net.oya.common.AppConfig;
import com.net.oya.common.Constants;
import com.net.oya.common.Page;
import com.net.oya.model.Admin;
import com.net.oya.model.Client;
import com.net.oya.model.Picture;
import com.net.oya.model.Project;
import com.net.oya.model.User;
import com.net.oya.service.ClientService;
import com.net.oya.service.PictureService;
import com.net.oya.service.ProjectService;
import com.net.oya.service.RememberService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.ClientUtil;
import com.net.oya.util.CookieUtil;
import com.net.oya.util.Image;

@Controller
@RequestMapping("/client")
public class ClientController {
    private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

	@Autowired
	AppConfig appconfig ;
	
	@Autowired
	ProjectService projectService ;
	
	
	@Autowired
	ClientService clientService ;
	
	@Autowired
	RememberService rememberService ;
	
	@Autowired
	PictureService pictureService ;
	
	 @RequestMapping(method = RequestMethod.GET)
	    public String index() {
	        return "client/clientLogin";
	    }

	    @RequestMapping(value = "/reg", method = RequestMethod.POST)
	    public String doReg(Client client, HttpSession session,@RequestParam("logo") MultipartFile file) {
	        if(file!=null&&!file.isEmpty()) {
	        	uploadImage(client, session, file);
	        }
	    	clientService.save(client);
	        return "admin/client";
	    }

	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String login() {
	        return "client/clientLogin";
	    }

	    @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public String doLogin(Client client, HttpSession session) {
	        if (clientService.checkLogin(client)) {
	            ClientUtil.saveCLientToSession(session, clientService.findByUsernameAndPassword(client.getUsername(), client.getPassword())); 
	            logger.debug("L'administrateur[{}]Atterrissage réussi",client.getUsername());
	            return "redirect:/client/home";
	        }
	        return "redirect:/client/clientLogin?errorPwd=true";
	    }
	    @RequestMapping(value="/home", method = RequestMethod.GET)
	    public String MyHome(HttpSession session,HttpServletResponse response, HttpServletRequest request, Model model,Project project,User user) {
	     	Client client = ClientUtil.getClientFromSession(session);
	    	model.addAttribute("client" ,client);
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
	    	Page<Project> page = new Page<Project>(request);
	    	projectService.findProjects(page);
	    	model.addAttribute("page",page);
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
	    private void uploadImage(Client client, HttpSession session ,@RequestParam(name="file", required = false) MultipartFile file) {
	    	String fileName = generateFileName();
	    	String path = generateFilePath(session);
	    	String serverFile = path + "/" + fileName ;
	    	Picture picture = uploadAndSaveImg(session, file, fileName, path , serverFile);
	    	client.setClientPic(picture);
	    }
	    private String generateFilePath(HttpSession session) {
	    	return session.getServletContext().getRealPath("/upload");
	    }
	    private String generateFileName() {
	    	return new Date().getTime() + ".jpg" ;
	    }
	    private Picture uploadAndSaveImg(HttpSession session ,MultipartFile file,String fileName , String path , String serverFile) {
	        Picture picture = new Picture();
	        try {
	            logger.info(path);
	            if (!new File(path).exists()) {
	                new File(path).mkdirs();
	            }
	            if (!new File(serverFile).exists()) {
	                new File(serverFile).createNewFile();
	            }
	            byte[] bytes = file.getBytes();
	            BufferedOutputStream stream =
	                    new BufferedOutputStream(new FileOutputStream(new File(serverFile)));
	            stream.write(bytes);
	            stream.close();
	            Image image = new Image(serverFile);
	            image.resize(Constants.IMG_WIDTH,Constants.IMG_HEIGHT);
	            image.save();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        picture.setMemo("Téléchargement l'image");
	        picture.setTitle("Téléchargement l'image");
	        picture.setUpdateTime(new Date());
	        picture.setUrl("/upload/" + fileName);
	        picture.setUpdateAdmin(AdminUtil.getAdminFromSession(session));
	        pictureService.save(picture);
	        return picture;
	    }
	

}
