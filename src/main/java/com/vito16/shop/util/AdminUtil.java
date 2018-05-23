package com.vito16.shop.util;

import javax.servlet.http.HttpSession;

import com.vito16.shop.common.Constants;
import com.vito16.shop.model.Admin;

/**
 * Classe Outils d'administration
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
public class AdminUtil {

    public static final String ADMIN = Constants.LOGIN_ADMIN;

    /**
     * Configurer L'admin pour la session
     *
     * @param session
     * @param admin
     */
    public static void saveAdminToSession(HttpSession session, Admin admin) {
        UserUtil.deleteUserFromSession(session);
        session.setAttribute(ADMIN,admin);
    }

    /**
     * Obtenir les informations de gestion actuelles de Session
     *
     * @param session
     * @return
     */
    public static Admin getAdminFromSession(HttpSession session) {
        Object attribute = session.getAttribute(ADMIN);
        return attribute == null ? null : (Admin) attribute;
    }

    /**
     *Supprimer les informations de gestion de connexion de la session
     *
     * @param session
     */
    public static void deleteAdminFromSession(HttpSession session) {
        session.removeAttribute(ADMIN);
    }
}
