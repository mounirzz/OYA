/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

package com.net.oya.common;


public class Constants {
	public static final String LOGIN_USER = "login_user";
	public static final String LOGIN_ADMIN = "login_admin";
	public static final String LOGIN_COLL = "login_coll";
	public static final String LOGIN_CLIENT = "login_client";
	public static final String CART = "cart";
	public static final String PROJET ="projet";
    public static final int IMG_WIDTH = 300;
    public static final int IMG_HEIGHT = 300;

    public static class OrderStatus {
        public static final Integer WAIT_PAY = 0;//Au nom du paiement
        public static final Integer PAYED = 1;//Payé
        public static final Integer SHIPPED = 2;//A été expédié
        public static final Integer DELETED = 3;//A été supprimé
        public static final Integer ENDED = 4;//A été complété
    }
}
