package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class DossierAdmin implements Serializable {

	private static final long serialVersionUID = 1L;
	private long idDossier ;
	private long idContrat;
	private String Objet_contrat;
	private double estimation_trav; 
	private double honoraires ;
	private double Devis_topographe;
	@OneToOne
	@JoinColumn
	private Project project_doss ;
	
	public long getIdDossier() {
		return idDossier;
	}
	public long getIdContrat() {
		return idContrat;
	}
	public void setIdContrat(long idContrat) {
		this.idContrat = idContrat;
	}
	public String getObjet_contrat() {
		return Objet_contrat;
	}
	public void setObjet_contrat(String objet_contrat) {
		Objet_contrat = objet_contrat;
	}
	public double getDevis_topographe() {
		return Devis_topographe;
	}
	public void setDevis_topographe(double devis_topographe) {
		Devis_topographe = devis_topographe;
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
	public DossierAdmin(long idDossier, long idContrat, String objet_contrat, double estimation_trav, double honoraires,
			double devis_topographe, Project project_doss) {
		super();
		this.idDossier = idDossier;
		this.idContrat = idContrat;
		Objet_contrat = objet_contrat;
		this.estimation_trav = estimation_trav;
		this.honoraires = honoraires;
		Devis_topographe = devis_topographe;
		this.project_doss = project_doss;
	}
	

}
