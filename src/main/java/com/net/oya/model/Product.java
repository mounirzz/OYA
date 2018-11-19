package com.net.oya.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Entity
@DynamicUpdate
@Table(name = "t_product")
public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;// Titre																																						// private String title; // 
	private String point;// Category Type																																					//private STring point
	private Picture masterPic;// class photo																																				//private  Picture masterPic ;
	private List<Picture> slavePic;// liste des photos
	private String note;// description de product																																				//private String note ;
	private Date createTime;// Creation de la date																																				
	private String code;// Referance de l'annonce																																				// priavte String code
	private String model;// Model																																								//private String model ;
	private String km; // km																							//private String km; // km
	private String status; // status du produit																																				//private String status; // status du produit
	private String prix; // prix																																									//private String prix
	private String immatriculation;// DonnÃ©es Techniques																																			//private String immatriculation ;
	private Date anneecirculation;// premiÃ¨re mise en circulation																																	//private Date anneecirculation;// premiÃ¨re mise en circulation
	private String carburant;// carburant																																						//	private String carburant;// carburant
	private Long stock;// Stock du product																																							
	private Admin inputUser;// CrÃ©ateur

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Lob
	@Column(columnDefinition = "TEXT")
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Long getStock() {
		return stock;
	}

	public void setStock(Long stock) {
		this.stock = stock;
	}

	@ManyToOne
	@JoinColumn
	public Admin getInputUser() {
		return inputUser;
	}

	public void setInputUser(Admin inputUser) {
		this.inputUser = inputUser;
	}

	@ManyToOne
	@JoinColumn
	public Picture getMasterPic() {
		return masterPic;
	}

	public void setMasterPic(Picture masterPic) {
		this.masterPic = masterPic;
	}

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	public List<Picture> getSlavePic() {
		return slavePic;
	}

	public void setSlavePic(List<Picture> slavePic) {
		this.slavePic = slavePic;
	}

	@Override
	public String toString() {
		return "Product{" + "id=" + id + ", title='" + title + '\''
				+ ", point=" + point + ", masterPic=" + masterPic
				+ ", slavePic=" + slavePic + ", note='" + note + '\''
				+ ", createTime=" + createTime + ", code='" + code
				+ '\''
				+ ", model='"
				+ model
				+ '\''
				+
				// ", stock=" + stock +
				", status=" + status + ", km=" + km + ", prix=" + prix
				+ ", inputUser=" + inputUser + ", carburant =" + carburant
				+ ", anneecirculation =" + anneecirculation
				+ ",  immatriculation =" + immatriculation + '}';
	}

	public String getImmatriculation() {
		return immatriculation;
	}

	public void setImmatriculation(String immatriculation) {
		this.immatriculation = immatriculation;
	}

	public Date getAnneecirculation() {
		return anneecirculation;
	}

	public void setAnneecirculation(Date anneecirculation) {
		this.anneecirculation = anneecirculation;
	}

	public String getCarburant() {
		return carburant;
	}

	public void setCarburant(String carburant) {
		this.carburant = carburant;
	}

	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn public Model getModelList() { return ModeltoMarqueList; }
	 * 
	 * public void setModelList(Model ModeltoMarqueList) {
	 * this.ModeltoMarqueList = ModeltoMarqueList; }
	 */

	public String getKm() {
		return km;
	}

	public void setKm(String km) {
		this.km = km;
	}

	public String getPrix() {
		return prix;
	}

	public void setPrix(String prix) {
		this.prix = prix;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
