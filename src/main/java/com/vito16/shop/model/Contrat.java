package com.vito16.shop.model;

import java.io.Serializable;

public class Contrat implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idContrat ;
	private String Objet_Contrat ;
	private double  devis_topographe ;
	private DossierAdmin dossier_contrat ;
	public Integer getIdContrat() {
		return idContrat;
	}
	public void setIdContrat(Integer idContrat) {
		this.idContrat = idContrat;
	}
	public String getObjet_Contrat() {
		return Objet_Contrat;
	}
	public void setObjet_Contrat(String objet_Contrat) {
		Objet_Contrat = objet_Contrat;
	}
	public double getDevis_topographe() {
		return devis_topographe;
	}
	public void setDevis_topographe(double devis_topographe) {
		this.devis_topographe = devis_topographe;
	}
	public DossierAdmin getDossier_contrat() {
		return dossier_contrat;
	}
	public void setDossier_contrat(DossierAdmin dossier_contrat) {
		this.dossier_contrat = dossier_contrat;
	}
	public Contrat(Integer idContrat, String objet_Contrat, double devis_topographe, DossierAdmin dossier_contrat) {
		super();
		this.idContrat = idContrat;
		Objet_Contrat = objet_Contrat;
		this.devis_topographe = devis_topographe;
		this.dossier_contrat = dossier_contrat;
	}
}
