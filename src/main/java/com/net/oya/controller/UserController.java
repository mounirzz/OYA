package com.net.oya.controller;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.net.oya.common.AppConfig;
import com.net.oya.common.Constants;
import com.net.oya.common.Page;
import com.net.oya.model.Admin;
import com.net.oya.model.DossierAdmin;
import com.net.oya.model.Order;
import com.net.oya.model.Picture;
import com.net.oya.model.Product;
import com.net.oya.model.Project;
import com.net.oya.model.Remember;
import com.net.oya.model.User;
import com.net.oya.model.UserAddress;
import com.net.oya.service.DossierService;
import com.net.oya.service.OrderService;
import com.net.oya.service.ProductService;
import com.net.oya.service.ProjectService;
import com.net.oya.service.RememberService;
import com.net.oya.service.UserAddressService;
import com.net.oya.service.UserService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.CookieUtil;
import com.net.oya.util.Image;
import com.net.oya.util.UserUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    AppConfig appConfig;

    @Autowired
    UserService userService;
    
    @Autowired
    ProjectService projectService ;

    @Autowired
    OrderService orderService;

    @Autowired
    UserAddressService userAddressService;

    @Autowired
    RememberService rememberService;
    
    @Autowired
    ProductService productService ;
    
    @Autowired
    DossierService DossierService ;

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "user/userLogin2";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.GET)
    public String reg(HttpSession session, Model model) {
        Admin admin = AdminUtil.getAdminFromSession(session);
    	model.addAttribute("admin" ,admin);
        return "admin/Comptes";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public String doReg(@Valid @ModelAttribute User user,BindingResult result, Model model,  HttpSession session) {
        if (result.hasErrors()) {
            for (ObjectError or : result.getAllErrors()) {
                logger.warn("Type d'authentification:" + or.getCode() + " \t Message d'erreur:"
                        + or.getDefaultMessage());
            }
            model.addAttribute("error", "Les données sont erronées, veuillez réessayer");
            return "admin/Comptes";
        }
        userService.save(user);
        logger.info("Utilisateurs ajoutés avec succès:" + user);
       	UserUtil.getUserFromSession(session);
    	model.addAttribute("user", user);
    	return "admin/Comptes";
    }
    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
    public String admindelete(@PathVariable("id") Integer id) {
    	userService.userdelete(id);
    	return "redirect:/admin/reg";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginForm(HttpServletRequest request, HttpSession session) {
        String uuid;
        if ((uuid = CookieUtil.getCookieValue(request, appConfig.USER_COOKIE_NAME)) != null) {
            Remember remember = rememberService.findById(uuid);
            if (remember != null && remember.getUser() != null) {
                if (userService.checkLogin(remember.getUser())) {
                    UserUtil.saveUserToSession(session, remember.getUser());
                    logger.info("L'utilisateur [{}] s'est connecté avec succès avec les cookies.", remember.getUser().getUsername());
                    return "redirect:/";
                }
            }
        }
        return "user/userLogin2";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(User user, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        if (userService.checkLogin(user)) {
            user = userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
            UserUtil.saveUserToSession(session, user);
            logger.info("Rappelez-vous s'il faut se connecter à l'utilisateur:" + request.getParameter("remember"));

            if ("on".equals(request.getParameter("remember"))) {
                String uuid = UUID.randomUUID().toString();
                Remember remember = new Remember();
                remember.setId(uuid);
                remember.setUser(user);
                remember.setAddTime(new Date());
                rememberService.add(remember);
                CookieUtil.addCookie(response, appConfig.USER_COOKIE_NAME, uuid, appConfig.USER_COOKIE_AGE);
            } else {
                CookieUtil.removeCookie(response, appConfig.USER_COOKIE_NAME);
            }
            logger.info("Utilisateur[" + user.getUsername() + "]Atterrissage réussi");
            return "redirect:/user/home";
        }
        return "redirect:/user/login?errorPwd=true";
    }
    @RequestMapping(value ="/home", method = RequestMethod.GET)
    public String Myhome(HttpSession session,HttpServletRequest request, HttpServletResponse reponse,Model model,Project project) {
    	User user = UserUtil.getUserFromSession(session);
    	model.addAttribute("user", user);
    	Page<Project> page = new Page<Project>(request);
    	projectService.findProjects(page);
    	model.addAttribute("page", page);
    	return "Project/ProjectList";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session,HttpServletResponse response) {
        UserUtil.deleteUserFromSession(session);
        CookieUtil.removeCookie(response, appConfig.USER_COOKIE_NAME);
//        rememberService.delete();
        return "redirect:/";
    }

    @RequestMapping(value = "/profile")
    public String profile(HttpSession session, Model model) {
        User user = UserUtil.getUserFromSession(session);
        if (user == null) {
            return "redirect:/user/login?timeout=true";
        }
        model.addAttribute("user", user);
        return "user/Profile";
    }
  
    @RequestMapping(value = "/profile/updateUser", method = RequestMethod.GET)
    public String doUpdateUser2() {
       return "user/profile/updateUser";
    }
  
    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public String orderList(Model model, HttpSession session, HttpServletRequest request) {
        User user = UserUtil.getUserFromSession(session);
        Page<Order> page = new Page<Order>(request);
        orderService.findOrders(page, user.getId());
        model.addAttribute("page", page);
        return "order/orderList";
    }

    @RequestMapping(value = "/order/{id}", method = RequestMethod.GET)
    public String orderView(@PathVariable Integer id, Model model, HttpSession session, HttpServletRequest request) {
        User user = UserUtil.getUserFromSession(session);
        Order order = orderService.findById(id);
        model.addAttribute("order", order);
        return "order/orderView";
    }
 
    @RequestMapping(value = "/order/confirm/{id}")
    @ResponseBody
    public String orderConfirm(@PathVariable Integer id, Model model, HttpSession session, HttpServletRequest request) {
        User user = UserUtil.getUserFromSession(session);
        Order order = orderService.findById(id);
        if(order.getUser().getId()==user.getId()){
            orderService.updateOrderStatus(id, Constants.OrderStatus.ENDED);
            return "success";
        }else{
            return "fail";
        }
    }
    @RequestMapping(value= "/search", method = RequestMethod.GET)
    public String SearchProduct(ModelAndView model,HttpServletRequest request ,Integer id ,String name,Model model1,String title){
    	//List<Marque> ListNamepro= productService.findMarque(name, id);
    	//List<com.vito16.shop.model.Model> listeNameMod=productService.findModel(name, id);
    	//List<Product> searchByTitle=productService.findByTitle(title);
    	//model1.addAttribute("ListNamepro" , ListNamepro );
    	//model1.addAttribute("listeNameMod" , listeNameMod);
    	//model1.addAttribute("searchByTitle" , searchByTitle);
    	model.setViewName("product/search");
    	return "SearchProduct" ;
    }
    /**
     * L'adresse de l'utilisateur est chargée
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/userAddressList/{id}")
    @ModelAttribute
    @ResponseBody
    public List<UserAddress> getUserAddressList(@PathVariable int id) {
        return userAddressService.findByUserId(id);
    }

    @RequestMapping(value = "/userAddress", method = RequestMethod.GET)
    public String userAddress(Model model, HttpSession session) {
        model.addAttribute("title", "Gestion d'adresses");
        AdminUtil.getAdminFromSession(session);
        UserUtil.getUserFromSession(session);
      //  List<UserAddress> userAddressList = userAddressService.findByUserId(UserUtil.getUserFromSession(session).getId());
       // model.addAttribute("userAddressList", userAddressList);
        return "Project/Calendar";
    }
    @RequestMapping(value="/Calendar", method = RequestMethod.GET)
    public String CalendarUser(Model model , HttpSession session) {
    	model.addAttribute("title","Calendrier du projet");
    	//List<Project> ListProject =
    	// Model.addAttribute() ;
    	return "Project/Calendar";
    }
    @RequestMapping(value = "/userAddress/add", method = RequestMethod.GET)
    public String addUserAddress(Model model) {
        model.addAttribute("title", "Ajouter l'adresse de livraison");
        return "user/addUserAddress";
    }

    @RequestMapping(value = "/userAddress/add", method = RequestMethod.POST)
    @ResponseBody
    public String doAddUserAddress(HttpSession session, UserAddress userAddress) {
    	AdminUtil.getAdminFromSession(session);
    	userAddress.setUser(UserUtil.getUserFromSession(session));
        userAddressService.save(userAddress);
        logger.debug("Les informations d'adresse ont été enregistrées avec succès.");
        return "success";
    }

    @RequestMapping(value = "/userAddress/update", method = RequestMethod.POST)
    @ResponseBody
    public String doUpdateUserAddress(HttpSession session, UserAddress userAddress) {
        userAddressService.updateUserAddress(userAddress);
        return "success";
    }

    @RequestMapping(value = "/userAddress/{id}")
    @ResponseBody
    public UserAddress findAddress(@PathVariable Integer id) {
        UserAddress userAddress = userAddressService.findById(id);
        return userAddress;
    }

    @RequestMapping(value = "/userAddress/delete/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String delUserAddress(Model model, @PathVariable Integer id) {
        userAddressService.deleteById(id);
        logger.debug("Adresse de réception supprimée avec succès ...");
        return "success";
    }
  /*  @RequestMapping(method = RequestMethod.GET)
	public ModelAndView admin(ModelAndView model,HttpSession session, HttpServletRequest request) {
		Page<Project> page = new Page<Project>(request);
		projectService.findProjects(page);
		model.addObject("page", page);
		model.setViewName("user/home");
		return model ;
	}
    @RequestMapping(value = "/{id}")
    public String showInfo(@PathVariable Integer id, Model model) {
        Project  project = projectService.findById(id);
        model.addAttribute("project", project);
        return "product/productView";
    }*/


}
