package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.*;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Entity
@Table(name = "t_admin")
public class Admin implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;//Username
	private String password;//Mot de passe

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
