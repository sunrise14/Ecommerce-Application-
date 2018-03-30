package com.niit.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty
	private String firstName;
	private String lastName;
	@Email
	@Column(unique=true, nullable=false)
	private String email;
	@NotEmpty
	@Size(max=10, min=10)
	private String phone;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	@Valid
	private User user;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddress_id")
	private BillingAddress billingAddress;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddress_id")
	private ShippingAddress shippingAddress;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cart_id")
	private Cart cart;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
}
