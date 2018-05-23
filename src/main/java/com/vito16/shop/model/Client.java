package com.vito16.shop.model;

public class Client extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id_client ;
	private String Reference ;
	public long getId_client() {
		return id_client;
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
	public Client(long id_client, String reference) {
		super();
		this.id_client = id_client;
		Reference = reference;
	}

}
