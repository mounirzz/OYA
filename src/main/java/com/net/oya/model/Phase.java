package com.net.oya.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;
@Entity
@Table(name="t_phase")
public class Phase implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id ;
	private String phase ;
	private Date DateDebut ;
	private Date DateFin ;
	private String statut ;
	private int heures_prevues ;
	private int heures_realises ;
	@ManyToOne
	@JoinColumn
	private Project project ;
	private Admin InputAdmin ;
	
	@ManyToOne
	@JoinColumn
	public Admin getInputAdmin() {
		return InputAdmin;
	}
	public void setInputAdmin(Admin inputAdmin) {
		InputAdmin = inputAdmin;
	}
	
	
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
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
	public int getHeures_prevues() {
		return heures_prevues;
	}
	public void setHeures_prevues(int heures_prevues) {
		this.heures_prevues = heures_prevues;
	}
	public int getHeures_realises() {
		return heures_realises;
	}
	public void setHeures_realises(int heures_realises) {
		this.heures_realises = heures_realises;
	}
	public Phase(Integer id, String phase, Date dateDebut, Date dateFin, String statut, int heures_prevues,
			int heures_realises, Project project) {
		super();
		this.id = id;
		this.phase = phase;
		DateDebut = dateDebut;
		DateFin = dateFin;
		this.statut = statut;
		this.heures_prevues = heures_prevues;
		this.heures_realises = heures_realises;
		this.project = project;
	}
	
	
}
