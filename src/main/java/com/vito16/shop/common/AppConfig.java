package com.vito16.shop.common;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class AppConfig {


	// Fichier d'attributs pour charger l'objet
	
	private static PropertiesLoader propertiesLoader;

	@Value("${user.cookie.name}")
	public String USER_COOKIE_NAME;

	@Value("${user.cookie.age}")
	public int USER_COOKIE_AGE;

//Obtenir la configuration
	
	public static String getConfig(String key) {
		if (propertiesLoader == null){
			propertiesLoader = new PropertiesLoader("application.properties");
		}
		return propertiesLoader.getProperty(key);
	}
	public static String getAdminPath() {
		return getConfig("adminPath");
	}
	public static String getFrontPath() {
		return getConfig("frontPath");
	}
	public static String getUrlSuffix() {
		return getConfig("urlSuffix");
	}
}
