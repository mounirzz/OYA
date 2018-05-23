package com.vito16.shop.model;

public class Collaborateur extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
