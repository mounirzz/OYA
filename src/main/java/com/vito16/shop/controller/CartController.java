package com.vito16.shop.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vito16.shop.model.Product;
import com.vito16.shop.service.ProductService;
import com.vito16.shop.util.CartUtil;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    private static final Logger logger = LoggerFactory.getLogger(CartController.class);

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String cart() {
        return "order/cart";
    }

    @RequestMapping(value = "/add/{id}/{total}")
    @ResponseBody
    public String addToCart(ModelAndView model, @PathVariable Integer id, @PathVariable Integer total, HttpSession session) {
        Product product = productService.findById(id);
        CartUtil.saveProductToCart(session, product, total);
        logger.debug("Ajouter au panier Succès ...");
        return "success";
    }

    @RequestMapping(value = "/delete/{id}")
    @ResponseBody
    public String deleteFromCart(ModelAndView model, @PathVariable(value = "id") Integer productId, HttpSession session) {
        CartUtil.deleteProductFromCart(session, productId);
        logger.debug("Panier de reservations supprimé succès du produit ...");
        return "success";
    }

    @RequestMapping(value = "/deleteAll")
    @ResponseBody
    public String deleteAllFromCart(HttpSession session) {
        CartUtil.cleanCart(session);
        logger.debug("Panier de reservations vides ...");
        return "success";
    }
}
