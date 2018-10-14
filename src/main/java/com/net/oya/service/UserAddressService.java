/**
 *
 */
package com.net.oya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.model.User;
import com.net.oya.model.UserAddress;
import com.net.oya.repository.UserAddressRepository;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
@Transactional
public class UserAddressService {
    @Autowired
    private UserAddressRepository userAddressDao;

    /**
     * Enregistrer l'adresse de livraison
     *
     * @param userAddress
     */
    public void save(UserAddress userAddress) {
        userAddressDao.save(userAddress);
    }

    /**
     * Interrogez l'adresse de livraison de l'ID spécifié
     *
     * @param id
     * @return
     */
    public UserAddress findById(Integer id) {
        return userAddressDao.findOne(id);
    }

    /**
     *Interrogez l'adresse de livraison associée à l'utilisateur
     *
     * @param user Id utilisateur
     * @return
     */
    public List<UserAddress> findByUserId(Integer userId) {
        User user = new User() {
		};
        user.setId(userId);
        return userAddressDao.findByUser(user);
    }

    /**
     * Supprimer l'adresse de livraison
     *
     * @param id Adresse de réception ID
     */
    public void deleteById(Integer id) {
        userAddressDao.delete(id);
    }

    /**
     * Modifier l'adresse
     * @param userAddress
     */
    public void updateUserAddress(UserAddress userAddress) {
        userAddressDao.save(userAddress);
    }
}
