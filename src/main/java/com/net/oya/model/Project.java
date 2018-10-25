package com.net.oya.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@DynamicUpdate
@Table(name="t_project")
public class Project implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id ;
	private String titleProject ;
	private String num_title_foncier ;
	private String intitule ;
	private DossierAdmin dossierAdmin ;
	private Plan plan ;
	private long  certificat_propriete ;
	//@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date_debut ;
	//@DateTimeFormat(pattern ="yyyy-MM-dd")
	private Date date_realisation ;
	private String description ;
	private String etat ;
	private Collaborateur inputColl ;
	private Admin inputAssocie;
	//private PictureProjet ProjectPic;// class photo																																				//private  Picture masterPic ;
	//private List<PictureProjet> listPic;// liste des photos
	@OneToOne
	@JoinColumn(name="clients")
	private Client clients;
	
	@ManyToOne
	@JoinColumn
	public Admin getInputAssocie() {
		return inputAssocie;
	}
	
	public void setInputAssocie(Admin inputAssocie) {
		this.inputAssocie = inputAssocie;
	}
	
	
	public Client getClients() {
		return clients;
	}
	
	public void setClients(Client clients) {
		this.clients = clients;
	}
	public Project() {} 
	private String categorie ;
	
	@OneToOne
	@JoinColumn
	private Chantier chantier ; 
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
	
	public Collaborateur getInputColl() {
		return inputColl;
	}
	public void setInputColl(Collaborateur inputColl) {
		this.inputColl = inputColl;
	}
	public Chantier getChantier() {
		return chantier;
	}
	public void setChantier(Chantier chantier) {
		this.chantier = chantier;
	}
	public String getTitleProject() {
		return titleProject;
	}
	public void setTitleProject(String titleProject) {
		this.titleProject = titleProject;
	}
	@ManyToOne
	@JoinColumn
	public DossierAdmin getDossierAdmin() {
		return dossierAdmin;
	}
	public void setDossierAdmin(DossierAdmin dossierAdmin) {
		this.dossierAdmin = dossierAdmin;
	}
	@ManyToOne
	@JoinColumn
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}
	@Override
	public String toString() {
		return "Project [id=" + id + ", titleProject=" + titleProject + ", num_title_foncier=" + num_title_foncier
				+ ", intitule=" + intitule + ", dossierAdmin=" + dossierAdmin + ", plan=" + plan
				+ ", certificat_propriete=" + certificat_propriete + ", date_debut=" + date_debut
				+ ", date_realisation=" + date_realisation + ", description=" + description + ", etat=" + etat
				+ ", inputColl=" + inputColl + ", inputAssocie=" + inputAssocie + ", clients=" + clients + ", categorie=" + categorie + ", chantier=" + chantier
				+ "]";
	}
	/*@ManyToOne
	@JoinColumn
	public PictureProjet getProjectPic() {
		return ProjectPic;
	}
	public void setProjectPic(PictureProjet projectPic) {
		ProjectPic = projectPic;
	}
	/*@Access(AccessType.PROPERTY)
	@ManyToMany(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	public List<PictureProjet> getListPic() {
		return listPic;
	}
	public void setListPic(List<PictureProjet> listPic) {
		this.listPic = listPic;
	}*/
}
