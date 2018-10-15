package com.net.oya.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

public class Collaborateur extends User {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idCollab ;
	private String Agence ;
	private String username ;
	private String password;
	public long getIdCollab() {
		return idCollab;
	}
	public void setIdCollab(long idCollab) {
		this.idCollab = idCollab;
	}
	public String getAgence() {
		return Agence;
	}
	public void setAgence(String agence) {
		Agence = agence;
	}
	public Collaborateur(long idCollab, String agence) {
		super();
		this.idCollab = idCollab;
		Agence = agence;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Collaborateur() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Collaborateur(Integer id, String username, String password, String nom, String prenom, String mail) {
		super(id, username, password, nom, prenom, mail);
		// TODO Auto-generated constructor stub
	}
	public Collaborateur(long idCollab, String agence, String username, String password) {
		super();
		this.idCollab = idCollab;
		Agence = agence;
		this.username = username;
		this.password = password ;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
