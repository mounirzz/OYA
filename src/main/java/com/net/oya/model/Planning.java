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

@Entity
@Table(name = "t_planning")
public class Planning implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id_planning;
	private Date HeureDeb;
	private Date HeureFin;
	private Date Jour;
	private Date Mois;
	private Date Annee;
	private String Motif;
	private Project project;
	private Admin InputAdmin;

	@ManyToOne
	@JoinColumn
	public Admin getInputAdmin() {
		return InputAdmin;
	}

	public void setInputAdmin(Admin inputAdmin) {
		InputAdmin = inputAdmin;
	}

	public Integer getId_planning() {
		return id_planning;
	}

	public void setId_planning(Integer id_planning) {
		this.id_planning = id_planning;
	}

	public Date getHeureDeb() {
		return HeureDeb;
	}

	public void setHeureDeb(Date heureDeb) {
		HeureDeb = heureDeb;
	}

	public Date getHeureFin() {
		return HeureFin;
	}

	public void setHeureFin(Date heureFin) {
		HeureFin = heureFin;
	}

	public Date getJour() {
		return Jour;
	}

	public void setJour(Date jour) {
		Jour = jour;
	}

	public Date getMois() {
		return Mois;
	}

	public void setMois(Date mois) {
		Mois = mois;
	}

	public Date getAnnee() {
		return Annee;
	}

	public void setAnnee(Date annee) {
		Annee = annee;
	}

	public String getMotif() {
		return Motif;
	}

	public void setMotif(String motif) {
		Motif = motif;
	}

	@ManyToOne
	@JoinColumn
	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	public Planning() {}
	public Planning(Integer id_planning, Date heureDeb, Date heureFin, Date jour, Date mois, Date annee, String motif,
			Project project) {
		super();
		this.id_planning = id_planning;
		HeureDeb = heureDeb;
		HeureFin = heureFin;
		Jour = jour;
		Mois = mois;
		Annee = annee;
		Motif = motif;
		this.project = project;
	}
}
