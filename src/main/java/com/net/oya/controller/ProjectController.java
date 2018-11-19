package com.net.oya.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.net.oya.common.Constants;
import com.net.oya.common.Page;
import com.net.oya.model.Client;
import com.net.oya.model.DossierAdmin;
import com.net.oya.model.Picture;
import com.net.oya.model.Product;
import com.net.oya.model.Project;
import com.net.oya.model.User;
import com.net.oya.service.ChantierService;
import com.net.oya.service.ClientService;
import com.net.oya.service.PictureService;
import com.net.oya.service.ProjectService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.ClientUtil;
import com.net.oya.util.CollaUtil;
import com.net.oya.util.Image;
import com.net.oya.util.UserUtil;

@Controller
@RequestMapping(value="/Projects")
public class ProjectController {

	private static org.slf4j.Logger Logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
	ProjectService projectService ;
	@Autowired
	ChantierService chantierService ;
	@Autowired
	PictureService pictureService ;
	@Autowired
	ClientService ClientService ;
	@Autowired
	UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView admin(ModelAndView model,HttpSession session, HttpServletRequest request,User user) {
		AdminUtil.getAdminFromSession(session);
		//UserUtil.getUserFromSession(session);
		Page<Project> page = new Page<Project>(request);
		projectService.findProjects(page);
		model.addObject("page", page);
		model.setViewName("Project/ProjectList");
		return model ;
	}
	@RequestMapping(value="/Project/{id}", method = RequestMethod.GET)
	public String ViewProject(@Valid @PathVariable Integer id ,Model model, HttpSession session){
		AdminUtil.getAdminFromSession(session);
		UserUtil.getUserFromSession(session);
		Project project = projectService.findById(id);
		model.addAttribute("project" , project);
		return "Project/ProjectDetail" ;
		//model.addObject("project" , project);
	//	model.setViewName("Project/ProjectDetail");
	//	return model ;
	}
	@RequestMapping(value="/add" ,method = RequestMethod.GET)
	public ModelAndView newForm(ModelAndView model,HttpSession session,HttpServletRequest request) {
		AdminUtil.getAdminFromSession(session);
		UserUtil.getUserFromSession(session);
		model.setViewName("Project/addProject");
		Page<Client> page2 = new Page<Client>(request);
		ClientService.findClient(page2);
		model.addObject("page2", page2);
		Page<User> page=new Page<User>(request);
		userService.findUsers(page);
		model.addObject("page", page);
		if (ClientUtil.getClientFromSession(session) != null) {
			model.setViewName("redirect:/");
		}
		return model ;
	}
	  @RequestMapping(value = "/add", method = RequestMethod.POST)
	    public String doNew(@Valid @ModelAttribute Project project, BindingResult result ,HttpSession session, @RequestParam("imgFile") MultipartFile file) {
	        if (file!=null&&!file.isEmpty()) {
	            uploadImage(project, session, file);
	        }
	        project.setInputAssocie(AdminUtil.getAdminFromSession(session));
	        project.setDate_debut(new Date());
	        projectService.save(project);
	        return "redirect:/DossierAdministratif/dossier#step-2";
	    }
	@RequestMapping(value="/edit/{id}", method = RequestMethod.GET)
	public String editProject(Model model , @PathVariable Integer id, HttpSession session) {
		AdminUtil.getAdminFromSession(session);
		UserUtil.getUserFromSession(session);
		Project project = projectService.findById(id);
		model.addAttribute("project" , project);
		Client client = ClientService.findById(id);
		model.addAttribute("client",client);
		return"Project/EditProject";
	}
	@RequestMapping(value="/adds" ,method= RequestMethod.POST)
	public String doNew(HttpSession session) {
		if (CollaUtil.getCollFromSession(session)==null) {
			return "redirect:/user/login?error=true";
		}
		return "/Projects";
	}
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView doEdit(ModelAndView model,@Valid @ModelAttribute Project project,BindingResult result, HttpSession session, @RequestParam(name = "file",required = false) MultipartFile file) {
        if (file!=null&&!file.isEmpty()) {
            uploadImage(project, session, file);
        }
        project.setInputAssocie(AdminUtil.getAdminFromSession(session));
        projectService.save(project);
        model.setViewName("redirect:/user/home");
        return model;
    }
	private void uploadImage(Project project, HttpSession session, @RequestParam(name = "file",required = false) MultipartFile file) {
	        String fileName = generateFileName();
	        String path = generateFilePath(session);
	        String serverFile = path + "/" + fileName;
	        Picture picture = uploadAndSaveImg(session, file, fileName, path, serverFile);
	        project.setProjectPic(picture);
	        //product.setMasterPic(picture);
	    }

	    private String generateFilePath(HttpSession session) {
	        return session.getServletContext().getRealPath("/images/Project/");
	    }

	    private String generateFileName() {
	        return new Date().getTime() + ".jpg";
	    }

	    private Picture uploadAndSaveImg(HttpSession session, MultipartFile file, String fileName, String path, String serverFile) {
	        Picture picture = new Picture();
	        try {
	            Logger.info(path);
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
	        picture.setUrl("/images/Project/" + fileName);
	        picture.setUpdateAdmin(AdminUtil.getAdminFromSession(session));
	        pictureService.save(picture);
	        return picture;
	    }
	}