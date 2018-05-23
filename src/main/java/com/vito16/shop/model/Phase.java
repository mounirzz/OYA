package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Phase implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idPhase ;
	private String phase ;
	private Date DateDebut ;
	private Date DateFin ;
	private String statut ;
	private Date heures_prevues ;
	private Date heures_realises ;
	@ManyToOne
	@JoinColumn
	private Project project ;
	public Integer getIdPhase() {
		return idPhase;
	}
	public void setIdPhase(Integer idPhase) {
		this.idPhase = idPhase;
	}
	public String getPhase() {
		return phase;
	}
	public void setPhase(String phase) {
		this.phase = phase;
	}
	public Date getDateDebut() {
		return DateDebut;
	}
	public void setDateDebut(Date dateDebut) {
		DateDebut = dateDebut;
	}
	public Date getDateFin() {
		return DateFin;
	}
	public void setDateFin(Date dateFin) {
		DateFin = dateFin;
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	public Date getHeures_prevues() {
		return heures_prevues;
	}
	public void setHeures_prevues(Date heures_prevues) {
		this.heures_prevues = heures_prevues;
	}
	public Date getHeures_realises() {
		return heures_realises;
	}
	public void setHeures_realises(Date heures_realises) {
		this.heures_realises = heures_realises;
	}
	public Phase(Integer idPhase, String phase, Date dateDebut, Date dateFin, String statut, Date heures_prevues,
			Date heures_realises) {
		super();
		this.idPhase = idPhase;
		this.phase = phase;
		DateDebut = dateDebut;
		DateFin = dateFin;
		this.statut = statut;
		this.heures_prevues = heures_prevues;
		this.heures_realises = heures_realises;
	}
	
}
