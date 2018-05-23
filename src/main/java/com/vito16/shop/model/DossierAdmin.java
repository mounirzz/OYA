package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class DossierAdmin implements Serializable {

	private static final long serialVersionUID = 1L;
	private long idDossier ;
	private double estimation_trav; 
	private double honoraires ;
	@OneToOne
	@JoinColumn
	private Project project_doss ;
	
	public long getIdDossier() {
		return idDossier;
	}
	public void setIdDossier(long idDossier) {
		this.idDossier = idDossier;
	}
	public double getEstimation_trav() {
		return estimation_trav;
	}
	public void setEstimation_trav(double estimation_trav) {
		this.estimation_trav = estimation_trav;
	}
	public double getHonoraires() {
		return honoraires;
	}
	public void setHonoraires(double honoraires) {
		this.honoraires = honoraires;
	}
	public Project getProject_doss() {
		return project_doss;
	}
	public void setProject_doss(Project project_doss) {
		this.project_doss = project_doss;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public DossierAdmin(long idDossier, double estimation_trav, double honoraires, Project project_doss) {
		super();
		this.idDossier = idDossier;
		this.estimation_trav = estimation_trav;
		this.honoraires = honoraires;
		this.project_doss = project_doss;
	}

}
