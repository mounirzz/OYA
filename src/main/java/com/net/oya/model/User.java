package com.net.oya.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.DiscriminatorFormula;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.NaturalIdCache;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;


/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

@Entity
@DynamicUpdate
@Table(name = "t_user")
public  class  User implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * Numéro de série de données
	 */
	private Integer id;

	/**
	 * Numéro de compte
	 */
	private String account;

	/**
	 * Nom du compte
	 */
	private String username;

	/**
	 * Solde du compte
	 */
	private Long balance;

	/**
	 * Valeur intégrale
	 */
	private Long point;

	/**
	 * Numéro de téléphone
	 */
	private String phone;

	/**
	 * Téléphone fixe
	 */
	private String telPhone;
	/**
	 * Nom de l'utilisateur
	 */
	private String nom ;
	/**
	 * Prenom de l'utilisateur
	 */
	
	private String prenom ; 
	/**
	 * Adresse
	 */
	private String address;
	/**
 	* Mail 
 	*/
	private String mail ;
	/**
	 * Code postal
	 */
	private String zipCode;

	/**
	 * Remarques
	 */
	private String remark;
		
	/**
	 * Informations sur le mot de passe (cryptage)
	 */
	private String password;

	/**
	 *Adresse de réception
	 */
	private List<UserAddress> addresses; // adresse de livraison associée

	/**
	 * 
	 */
	private List<Order> orders;  //commande
	/**
	 * Sel de cryptage de mot de passe
	 */
    private String slat;
    private String spc;

	public User() {
	};

	/**
	 * @param id
	 * @param username
	 * @param password
	 * @param nom 
	 * @param prenom 
	 * @param mail
	 */
	public User(Integer id, String username, String password,String nom , String prenom,String mail) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nom=nom ;
		this.prenom=prenom ;
		this.mail=mail ;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + "nom=" + nom + ", prenom " + prenom + ", mail =" + mail + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Length(min = 2, max = 15)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@NotEmpty
	@Length(min = 6, max = 14)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	@Max(999999)
	@Min(0)
	public Long getPoint() {
		return point;
	}

	public void setPoint(Long point) {
		this.point = point;
	}

	@Length(min = 11, max = 11)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Length(min = 11, max = 11)
	public String getTelPhone() {
		return telPhone;
	}

	public void setTelPhone(String telPhone) {
		this.telPhone = telPhone;
	}

	@Length(min = 4, max = 50)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Length(min = 6, max = 6)
	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	@Length(max = 50)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@OneToMany(mappedBy="user")
	public List<UserAddress> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<UserAddress> addresses) {
		this.addresses = addresses;
	}

	@OneToMany(mappedBy = "user")
	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Long getBalance() {
		return balance;
	}

	public void setBalance(Long balance) {
		this.balance = balance;
	}

	public String getSlat() {
        return slat;
    }

    public void setSlat(String slat) {
        this.slat = slat;
    }

	public String getSpc() {
		return spc;
	}

	public void setSpc(String spc) {
		this.spc = spc;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
