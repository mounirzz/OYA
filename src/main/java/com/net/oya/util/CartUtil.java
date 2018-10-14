package com.net.oya.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.net.oya.common.Constants;
import com.net.oya.model.OrderItem;
import com.net.oya.model.Product;

/**
 * Classe d'outils du panier
 *
 * @author Mounir
 * @version 2017/10/15
 */
public class CartUtil {
    public static final String CART = Constants.CART;
    private static Logger logger = LoggerFactory.getLogger(CartUtil.class);

    /**
     *Ajouter un article au panier
     *
     * @param session
     * @param product
     * @param total
     */
    public static synchronized void saveProductToCart(HttpSession session, Product product, Integer total) {
        Map<Integer, CartItem> cartItemMap = (HashMap<Integer, CartItem>) session.getAttribute(CART);
        CartItem ci = new CartItem(product, total);
        if (cartItemMap == null) {
            cartItemMap = new HashMap < Integer, CartItem > ();
        }
        //Pour déterminer si le panier actuel contient ce produit
        if (cartItemMap.containsKey(product.getId())) {
            CartItem currentCi = cartItemMap.get(product.getId());
            currentCi.setTotal(currentCi.getTotal() + total);
            cartItemMap.put(product.getId(), currentCi);
        } else {
            cartItemMap.put(product.getId(), ci);
        }
        session.setAttribute(CART, cartItemMap);
    }

    /**
     *Supprimer des articles dans le panier
     *
     * @param session
     * @param productId
     */
    public static synchronized void deleteProductFromCart(HttpSession session, Integer productId) {
        Map<Integer, CartItem> cartItemMap = (HashMap<Integer, CartItem>) session.getAttribute(CART);
        if(cartItemMap!=null) {
            cartItemMap.remove(productId);
        }
        session.setAttribute(CART, cartItemMap);
    }

    /**
     * Vider le panier
     *
     * @param session
     */
    public static synchronized void cleanCart(HttpSession session) {
        Map<Integer, CartItem> cartItemMap = (HashMap<Integer, CartItem>) session.getAttribute(CART);
        if(cartItemMap!=null){
            cartItemMap.clear();
        }
        logger.debug("Vider le panier ： cart :"+cartItemMap);
        session.setAttribute(CART, cartItemMap);
    }

    public static List<OrderItem> getOrderItemFromCart(HttpSession session){
        Map<Integer, CartItem> cartItemMap = (HashMap<Integer, CartItem>) session.getAttribute(CART);
        logger.debug("Obtenir des informations sur le produit ： cart :"+cartItemMap);
        if(cartItemMap==null) cartItemMap = new HashMap<Integer, CartItem>();
        List<OrderItem> oiList = new ArrayList<OrderItem>();
        for(CartItem ci:cartItemMap.values()){
            OrderItem oi = new OrderItem();
            oi.setProduct(ci.getProduct());
            oi.setQuantity(ci.getTotal());
            oiList
                    .add(oi);
        }
        return oiList;
    }
}
