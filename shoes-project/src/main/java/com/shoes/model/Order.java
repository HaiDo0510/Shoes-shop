package com.shoes.model;

import java.io.Serializable;

public class Order implements Serializable {
	private int id;
	private String email;
	private String time;
	private int total_price;
	private String status;
	
	public Order(String email,String time, int total_price, String status) {
		this.email = email;
		this.time = time;
		this.total_price = total_price;
		this.status = status;
	}
	public Order(int id, String email,String time, int total_price, String status) {
		super();
		this.id = id;
		this.email = email;
		this.time = time;
		this.total_price = total_price;
		this.status = status;
	}


	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public void setId(int id) {
		this.id = id;
	}



	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}




	public int getTotal_price() {
		return total_price;
	}


	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	
	
}
