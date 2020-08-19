package com.shoes.model;

import java.io.Serializable;

public class ProductID implements Serializable{
	private int id;
	private String image;
	private String name;
	private int price;
	private int quantity;
    private int sum;
    
    public ProductID() {
    	
    }
    
    public ProductID(int id, String image, String name, int price, int quantity) {
		super();
		this.id = id;
		this.image = image;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getSum() {
    	return quantity*price;
    }
}
