package com.shoes.model;

import java.io.Serializable;

public class Product implements Serializable {
	private int id;
	private String image;
	private String name;
	private int price;
	
	public Product(){
		
	}
	public Product(int id, String image, String name, int price) {
		super();
		this.id = id;
		this.image = image;
		this.name = name;
		this.price = price;
	}


	public Product(String image, String name, int price) {
		this.image = image;
		this.name = name;
		this.price = price;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
