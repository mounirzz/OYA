package com.vito16.shop.controller;
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

import com.vito16.shop.common.AppConfig;
import com.vito16.shop.common.Constants;
import com.vito16.shop.common.Page;
import com.vito16.shop.model.DossierAdmin;
import com.vito16.shop.model.Order;
import com.vito16.shop.model.Picture;
import com.vito16.shop.model.Product;
import com.vito16.shop.model.Remember;
import com.vito16.shop.service.DossierService;
import com.vito16.shop.service.OrderService;
import com.vito16.shop.service.ProductService;
import com.vito16.shop.service.RememberService;
import com.vito16.shop.util.AdminUtil;
import com.vito16.shop.util.CookieUtil;
import com.vito16.shop.util.Image;

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

import com.vito16.shop.model.User;
import com.vito16.shop.model.UserAddress;
import com.vito16.shop.service.UserAddressService;
import com.vito16.shop.service.UserService;
import com.vito16.shop.util.UserUtil;


@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    AppConfig appConfig;

    @Autowired
    UserService userService;

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
    public String reg() {
        return "user/Register";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public String doReg(@Valid User user, Model model, BindingResult result, HttpSession session) {
        if (result.hasErrors()) {
            for (ObjectError or : result.getAllErrors()) {
                logger.warn("Type d'authentification:" + or.getCode() + " \t Message d'erreur:"
                        + or.getDefaultMessage());
            }
            model.addAttribute("error", "Les données sont erronées, veuillez réessayer");
            return "user/Register";
        }
        userService.save(user);
        logger.info("Utilisateurs ajoutés avec succès:" + user);
       	UserUtil.getUserFromSession(session);
    	model.addAttribute("user", user);
    	return "user/home";
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
    public String Myhome(HttpSession session, HttpServletResponse reponse,Model model) {
    	User user = UserUtil.getUserFromSession(session);
    	model.addAttribute("user", user);
    	return "user/home";
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
    	return "Project/dossier/NewDossier";
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
    	dossierAdmin.setInputUser(UserUtil.getUserFromSession(session));
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
    	dossierAdmin.setInputUser(UserUtil.getUserFromSession(session));
    	DossierService.addDossier(dossierAdmin);
    	return "redirect:/user/Product/dossier";
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
        List<UserAddress> userAddressList = userAddressService.findByUserId(UserUtil.getUserFromSession(session).getId());
        model.addAttribute("userAddressList", userAddressList);
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


}
