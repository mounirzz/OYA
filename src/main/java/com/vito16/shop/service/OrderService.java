/**
 *
 */
package com.vito16.shop.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.common.Constants;
import com.vito16.shop.common.Page;
import com.vito16.shop.repository.OrderRepository;
import com.vito16.shop.repository.OrderItemRepository;
import com.vito16.shop.model.Order;
import com.vito16.shop.model.OrderItem;
import com.vito16.shop.model.UserAddress;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
@Transactional
public class OrderService {

    @Autowired
    OrderRepository orderDao;
    @Autowired
    OrderItemRepository orderItemDao;
    @Autowired
    UserAddressService userAddressService;

    /**
     * Nouvelle reservation
     *
     * @param order
     * @param orderItemList
     * @param userAddress
     */
    public void addOrder(Order order, List<OrderItem> orderItemList, UserAddress userAddress) {
        //mettre à jour ou ajouter l'adresse de récolte de l'utilisateur (basée sur userAddress si l'ID doit être ajouté ou mis à jour
        userAddressService.save(userAddress);
        save(order);
        for (OrderItem orderItem : orderItemList) {
            orderItemDao.save(orderItem);
        }
    }

    public void save(Order order) {
        orderDao.save(order);
    }

    public Order findById(Integer id) {
        return orderDao.findOne(id);
    }

    public List<Order> findAll() {
        return orderDao.findAll();
    }

    public List<Order> findOrders(Page<Order> page) {
        page.setResult(orderDao.findAll(page.getPageable()).getContent());
        page.setTotalCount(orderDao.count());
        return page.getResult();
    }

    public List<Order> findOrders(Page<Order> page,Integer userId){
        page.setResult(orderDao.findByUserId(userId,page.getPageable()).getContent());
        page.setTotalCount(orderDao.countByUserId(userId));
        return null;
    }

    /**
     *Supprimer les commandes et les informations relatives à la commande
     *
     * @param id 订单ID
     */
    public void deleteOrder(Integer id) {
        orderItemDao.deleteByOrderId(id);
        orderDao.delete(id);
    }

    /**
     *Modifier le statut de la commande
     *
     * @param orderID
     * @param status
     */
    public void updateOrderStatus(Integer orderID, Integer status) {
        Order order = orderDao.findOne(orderID);
        order.setStatus(status);
        //Modifiez les données de temps correspondantes lorsque l'état est modifié
        if (status == Constants.OrderStatus.PAYED) {
            order.setPayTime(new Date());
        } else if (status == Constants.OrderStatus.SHIPPED) {
            order.setShipTime(new Date());
        } else if (status == Constants.OrderStatus.ENDED) {
            order.setConfirmTime(new Date());
        }
        orderDao.save(order);
    }

    /**
     *Vérifier l'attribution de la commande
     *
     * @param orderId
     * @param userId
     * @return
     */
    public boolean checkOwned(Integer orderId, Integer userId) {
        return orderDao.findOne(orderId).getUser().getId().equals(userId);
    }

    public void pay(Integer orderId) {
        Order order = orderDao.findOne(orderId);
        order.setStatus(Constants.OrderStatus.PAYED);
        order.setPayTime(new Date());
        orderDao.save(order);
    }
}
