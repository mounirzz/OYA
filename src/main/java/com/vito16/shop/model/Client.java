package com.vito16.shop.model;

import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

public class Client extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id_client ;
	private String Reference ;
	private String username ;
	//@OneToMany
	//@JoinColumn
	
	public long getId_client() {
		return id_client;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setId_client(long id_client) {
		this.id_client = id_client;
	}
	public String getReference() {
		return Reference;
	}
	public void setReference(String reference) {
		Reference = reference;
	}

	public Client(long id_client, String reference, String username) {
		super();
		this.id_client = id_client;
		Reference = reference;
		this.username = username;
	}
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Client(Integer id, String username, String password, String nom, String prenom, String mail) {
		super(id, username, password, nom, prenom, mail);
		// TODO Auto-generated constructor stub
	}

}
