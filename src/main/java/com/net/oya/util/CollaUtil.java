package com.vito16.shop.util;
/**
 * 
 * @author Mounir
 * @email z.ezzahr@madrex.ma
 * @date 2018-05-29
 */

import javax.servlet.http.HttpSession;

import com.vito16.shop.common.Constants;
import com.vito16.shop.model.Collaborateur;

public class CollaUtil {

	public static final String Collaborateur = Constants.LOGIN_COLL;
	
	/**
	 * Configuration collaborateur pour la session
	 * 
	 * @author admin
	 * 
	 */
	public static  void saveCollToSession(HttpSession session , Collaborateur coll) {
		UserUtil.deleteUserFromSession(session);
		AdminUtil.deleteAdminFromSession(session);
		session.setAttribute(Collaborateur, coll);
	}
	/***
	 * Obtenir les informations de gestion actuelles de Session
	 * @param session 
	 * @return
	 */
	public static Collaborateur getCollFromSession(HttpSession session) {
		Object attribute = session.getAttribute(Collaborateur);
		return attribute == null ? null : (Collaborateur) attribute ;
	}
}
