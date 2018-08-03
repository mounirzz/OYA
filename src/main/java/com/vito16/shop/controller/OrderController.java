package com.vito16.shop.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.vito16.shop.common.Constants;
import com.vito16.shop.common.Page;
import com.vito16.shop.common.PageUtil;
import com.vito16.shop.model.Order;
import com.vito16.shop.model.OrderItem;
import com.vito16.shop.model.User;
import com.vito16.shop.model.UserAddress;
import com.vito16.shop.service.OrderService;
import com.vito16.shop.service.UserAddressService;
import com.vito16.shop.service.UserService;
import com.vito16.shop.util.CartUtil;
import com.vito16.shop.util.UserUtil;

/**
 * @author 
 * @date 
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    @Autowired
    UserService userService;

    @Autowired
    OrderService orderService;

    @Autowired
    UserAddressService userAddressService;

    /**
     * Liste de dossier administratif ???
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String list(Model model, HttpSession session, HttpServletRequest request) {
        User user = UserUtil.getUserFromSession(session);
        Page<Order> page = new Page<Order>(request);
        orderService.findOrders(page, user.getId());
        model.addAttribute("page", page);
        return "/";
    }

    /**
     * Confirmation de la commande
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/purchase", method = RequestMethod.GET)
    public String purchase(Model model, HttpSession session) {
        User user = userService.findOne(UserUtil.getUserFromSession(session).getId());
        List<UserAddress> userAddressList = user.getAddresses();
        model.addAttribute("addressList", userAddressList);
        return "order/orderPurchase";
    }

    /**
     * Passer une commande
     *
     * @param address
     * @param session
     * @return
     */
    @RequestMapping(value = "/ordering", method = RequestMethod.POST)
    public String ordering(UserAddress address, HttpSession session) {
        Order order = new Order();
        order.setCreateTime(new Date());
        address.setUser(UserUtil.getUserFromSession(session));
        order.setOrderNumber(new DateTime().toString("yyyyMMddHHmmSS"));
        order.setStatus(Constants.OrderStatus.WAIT_PAY);
        List<OrderItem> oiList = CartUtil.getOrderItemFromCart(session);
        BigDecimal totalSum = new BigDecimal("0");
        for (OrderItem oi : oiList) {
            totalSum = totalSum.add(new BigDecimal(oi.getProduct().getStock() * oi.getQuantity()));
            oi.setOrder(order);
        }
        order.setTotalPrice(totalSum.doubleValue());
        order.setFinalPrice(totalSum.doubleValue());
        order.setOrderItems(oiList);
        order.setUser(UserUtil.getUserFromSession(session));
        //Adresse enregistrée
        order.setAddress(address.getAddress());
        order.setZipcode(address.getZipcode());
        order.setConsignee(address.getConsignee());
        order.setPhone(address.getPhone());
        orderService.addOrder(order, oiList, address);
        CartUtil.cleanCart(session);
        return "order/orderingSuccess";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String viewOrder(@PathVariable Integer id, Model model) {
        model.addAttribute("order", orderService.findById(id));
        return "order/orderDetail";
    }
    
    @RequestMapping(value = "/ordering/{id}", method = RequestMethod.GET)
    public String viewOrderinvoice(@PathVariable Integer id, Model model) {
        model.addAttribute("order", orderService.findById(id));
        return "order/orderDetail";
    }
    
    @RequestMapping(value = "/pay/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String pay(@PathVariable(value = "id") Integer orderId, HttpSession session) {
        //Vérifie que la commande est la propriété de la personne actuelle)
        if (orderService.checkOwned(orderId, UserUtil.getUserFromSession(session).getId())) {
            orderService.pay(orderId);
            return "success";
        }
        return "error";
    }

    /**
     * Annuler la commande
     *
     * @param orderId
     * @return
     */
    @RequestMapping(value = "/cancel/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String cancel(@PathVariable(value = "id") Integer orderId) {
        //TODO Vérifiez que cette commande est disponible
        orderService.updateOrderStatus(orderId, Constants.OrderStatus.DELETED);
        return "success";
    }

    /**
     *Confirmation de réception de la commande
     *
     * @param orderId
     * @return
     */
    @RequestMapping(value = "/confirm/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String confirm(@PathVariable(value = "id") Integer orderId) {
        orderService.updateOrderStatus(orderId, Constants.OrderStatus.ENDED);
        return "success";
    }

}
