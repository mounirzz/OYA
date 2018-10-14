/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
package com.net.oya.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "t_orderitem")
public class OrderItem implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Product product;//Produits connexes
	private Order order;//Ordre associé
	private Integer quantity;//Nombre d'associations

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@OneToOne
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@ManyToOne
	@JoinColumn(name="order_id")
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

}
