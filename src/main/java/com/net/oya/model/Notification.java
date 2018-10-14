package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Notification implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long idNotif ;
	private String Notification ;
	private Date dateNotif ;
	private String Details ;  
	
	@ManyToOne
	@JoinColumn
	private Project Notif_project ;
	@ManyToOne
	@JoinColumn
	private User UserPers;
	
	
	
	public User getUserPers() {
		return UserPers;
	}
	public void setUserPers(User userPers) {
		UserPers = userPers;
	}
	public long getIdNotif() {
		return idNotif;
	}
	public void setIdNotif(long idNotif) {
		this.idNotif = idNotif;
	}
	public String getNotification() {
		return Notification;
	}
	public void setNotification(String notification) {
		Notification = notification;
	}
	public Date getDateNotif() {
		return dateNotif;
	}
	public void setDateNotif(Date dateNotif) {
		this.dateNotif = dateNotif;
	}
	public String getDetails() {
		return Details;
	}
	public void setDetails(String details) {
		Details = details;
	}
	public Project getNotif_project() {
		return Notif_project;
	}
	public void setNotif_project(Project notif_project) {
		Notif_project = notif_project;
	}
	public Notification(long idNotif, String notification, Date dateNotif, String details, Project notif_project,
			User userPers) {
		super();
		this.idNotif = idNotif;
		Notification = notification;
		this.dateNotif = dateNotif;
		Details = details;
		Notif_project = notif_project;
		UserPers = userPers;
	}

}
