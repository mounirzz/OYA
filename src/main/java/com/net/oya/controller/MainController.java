package com.net.oya.controller;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.net.oya.common.Page;
import com.net.oya.model.News;
import com.net.oya.model.Product;
import com.net.oya.model.ProductType;
import com.net.oya.model.User;
import com.net.oya.model.UserAddress;
import com.net.oya.service.ProductService;
import com.net.oya.util.UserUtil;


@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	ProductService productService;


	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index(ModelAndView model,String name,Integer id) {
		model = new ModelAndView("user/userLogin2");
	//	model.addObject("newProductList", productService.findNew());
		//model.addObject("ListMarque", marqueService.findMarque());
	//	model.addObject("ListModel", modelservice.findModel());
	//	model.addObject("SelectMarque", productService.listeNameMar(name, id));
	//	System.out.print(productService.listeNameMar(name, id));
	//	model.addObject("MarqueList", marqueService.fi
	//	model.addObject("ModelList", modelservice.findAll());
	//	model.addObject("popProductList", productService.findPop());
	//	model.addObject("productList", productService.findAll());
	//	model.addObject("productTypeList", productService.findType());
		return model;	
		}
	

	  @RequestMapping(value="/test" ,method = RequestMethod.GET)
		public ModelAndView index2(ModelAndView model,String name,Integer id) {
			model = new ModelAndView("test");
		//	model.addObject("SelectMarque", productService.listeNameMar(name, id));
		//model.addObject("MarqueList", marqueService.findmarque(name, id));
		//	model.addObject("ModelList", modelservice.findAll());
			return model;	
			}

}
