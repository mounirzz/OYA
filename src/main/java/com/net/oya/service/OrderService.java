/**
 *
 */
package com.net.oya.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.common.Constants;
import com.net.oya.common.Page;
import com.net.oya.model.Order;
import com.net.oya.model.OrderItem;
import com.net.oya.model.UserAddress;
import com.net.oya.repository.OrderItemRepository;
import com.net.oya.repository.OrderRepository;

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
