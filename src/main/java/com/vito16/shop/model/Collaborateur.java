package com.vito16.shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

public class Collaborateur extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idCollab ;
	private String Agence ;
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
}
