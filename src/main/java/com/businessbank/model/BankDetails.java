package com.businessbank.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class BankDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String password;
	private String email;
	private long mobile;
	private String pan;
	private String address;
	private double amount;
	
	public BankDetails() {
		System.out.println("BankDetailsExecuted");
	}

	public BankDetails(int id, String name, String password, String email, long mobile, String pan, String address,
			double amount) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.mobile = mobile;
		this.pan = pan;
		this.address = address;
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "BankDetails [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", mobile="
				+ mobile + ", pan=" + pan + ", address=" + address + ", amount=" + amount + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
	
	
}
