package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CollectionTable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="t_DossierAdmin")
public class DossierAdmin implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer idDossier ;
	private long idContrat;
	private String Objet_contrat;
	private double estimation_trav; 
	private double honoraires ;
	private double Devis_topographe;
	private Project project_doss ;
	private Admin InputAdmin ;
	
	public DossierAdmin() {}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getIdDossier() {
		return idDossier;
	}
	public void setIdDossier(Integer idDossier) {
		this.idDossier = idDossier;
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
	@OneToOne
	@JoinColumn
	public Project getProject_doss() {
		return project_doss;
	}
	public void setProject_doss(Project project_doss) {
		this.project_doss = project_doss;
	}
	@ManyToOne
	@JoinColumn
	public Admin getInputAdmin() {
		return InputAdmin;
	}
	public void setInputAdmin(Admin inputAdmin) {
		InputAdmin = inputAdmin;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public DossierAdmin(Integer idDossier, Integer idContrat, String objet_contrat, double estimation_trav, double honoraires,
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

	@Override
	public String toString() {
		return "DossierAdmin [idDossier=" + idDossier + ", idContrat=" + idContrat + ", Objet_contrat=" + Objet_contrat
				+ ", estimation_trav=" + estimation_trav + ", honoraires=" + honoraires + ", Devis_topographe="
				+ Devis_topographe + ", project_doss=" + project_doss + ", InputAdmin=" + InputAdmin + "]";
	}
	

	

}
