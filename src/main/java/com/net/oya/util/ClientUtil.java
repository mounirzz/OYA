package com.net.oya.util;

import javax.servlet.http.HttpSession;

import com.net.oya.common.Constants;
import com.net.oya.model.Client;

public class ClientUtil {

	   public static final String CLIENT = Constants.LOGIN_CLIENT;

	    /**
	     *Réglez l'utilisateur sur session
	     *
	     * @param session
	     * @param user
	     */
	    public static void saveCLientToSession(HttpSession session, Client client) {
	        AdminUtil.deleteAdminFromSession(session);
	        session.setAttribute(CLIENT, client);
	    }

	    /**
	     * Obtenir les informations d'utilisateur actuelles de Session
	     *
	     * @param session
	     * @return
	     */
	    public static Client getClientFromSession(HttpSession session) {
	        Object attribute = session.getAttribute(CLIENT);
	        return attribute == null ? null : (Client) attribute;
	    }

	    /**
	     * Supprimer les informations personnelles de l'utilisateur connecté de la session
	     *
	     * @param session
	     */
	    public static void deleteClientFromSession(HttpSession session) {
	        session.removeAttribute(CLIENT);
	    }
}
