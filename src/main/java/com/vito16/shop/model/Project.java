package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

public class Project implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id ;
	private String num_title_foncier ;
	private String intitule ;
	//private String Coordonnes_lambairt ;
	//private String plan_cadastral ;
	//private long plan ; 
	private long  certificat_propriete ;
	private Date date_debut ;
	private Date date_realisation ;
	private String description ;
	private String etat ;
	private String categorie ;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNum_title_foncier() {
		return num_title_foncier;
	}
	public void setNum_title_foncier(String num_title_foncier) {
		this.num_title_foncier = num_title_foncier;
	}
	public String getIntitule() {
		return intitule;
	}
	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}

	public Date getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(Date date_debut) {
		this.date_debut = date_debut;
	}
	public Date getDate_realisation() {
		return date_realisation;
	}
	public void setDate_realisation(Date date_realisation) {
		this.date_realisation = date_realisation;
	}

	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public long getCertificat_propriete() {
		return certificat_propriete;
	}
	public void setCertificat_propriete(long certificat_propriete) {
		this.certificat_propriete = certificat_propriete;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public Project(Integer id, String num_title_foncier, String intitule, long certificat_propriete, Date date_debut,
			Date date_realisation, String description, String etat, String categorie) {
		super();
		this.id = id;
		this.num_title_foncier = num_title_foncier;
		this.intitule = intitule;
		this.certificat_propriete = certificat_propriete;
		this.date_debut = date_debut;
		this.date_realisation = date_realisation;
		this.description = description;
		this.etat = etat;
		this.categorie = categorie;
	}
}
